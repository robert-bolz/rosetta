// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file   test/protocols/bootcamp/FoldTreeFromSS.cxxtest.hh
/// @brief
/// @author Robert Bolz (robert.mac.bolz@gmail.com)


// Test headers
#include <cxxtest/TestSuite.h>
#include <basic/options/option.hh>
#include <basic/options/keys/in.OptionKeys.gen.hh>
#include <devel/init.hh> 
#include <test/util/pose_funcs.hh>
#include <test/core/init_util.hh>

// Utility headers
#include <utility/vector1.hh>
#include <basic/Tracer.hh>
#include <utility/pointer/owning_ptr.hh>
#include <utility/vector1.hh>
#include <core/pose/Pose.fwd.hh> 
#include <core/pose/Pose.hh>
#include <core/import_pose/import_pose.hh>

/// Project headers
#include <core/types.hh>
#include <protocols/moves/DsspMover.hh>
#include <core/scoring/dssp/Dssp.hh>
#include <core/kinematics/FoldTree.hh>

// C++ headers

//Auto Headers
#include <core/pack/dunbrack/DunbrackRotamer.hh>


//using namespace protocols::match;
//using namespace protocols::match::upstream;


// --------------- Test Class --------------- //

class FoldTreeFromSS : public CxxTest::TestSuite {

core::pose::Pose mypose;

public:

	utility::vector1< std::pair< core::Size, core::Size > >
	identify_secondary_structure_spans( std::string const & ss_string ) {
 		utility::vector1< std::pair< core::Size, core::Size > > ss_boundaries;
  		core::Size strand_start = -1;
  		for ( core::Size ii = 0; ii < ss_string.size(); ++ii ) {
    		if ( ss_string[ ii ] == 'E' || ss_string[ ii ] == 'H'  ) {
      			if ( int( strand_start ) == -1 ) {
        			strand_start = ii;
      			} else if ( ss_string[ii] != ss_string[strand_start] ) {
        			ss_boundaries.push_back( std::make_pair( strand_start+1, ii ) );
        			strand_start = ii;
      			}
    		} else {
      			if ( int( strand_start ) != -1 ) {
    				ss_boundaries.push_back( std::make_pair( strand_start+1, ii ) );
    				strand_start = -1;
  				}
			}
		}
		if ( int( strand_start ) != -1 ) {
		// last residue was part of a ss-eleemnt                                                                                                                                
			ss_boundaries.push_back( std::make_pair( strand_start+1, ss_string.size() ));
		}
		for ( core::Size ii = 1; ii <= ss_boundaries.size(); ++ii ) {
			std::cout << "SS Element " << ii << " from residue " << ss_boundaries[ ii ].first << " to " << ss_boundaries[ ii ].second << std::endl;
		}
		return ss_boundaries;
	}

	core::kinematics::FoldTree fold_tree_from_ss () {
		protocols::moves::DsspMover dssp_mover;
		dssp_mover.apply( mypose );
		std::string ss_string = mypose.secstruct();
		std::cout << ss_string << std::endl;
		core::kinematics::FoldTree test_ft = fold_tree_from_dssp_string(ss_string);
		return test_ft;
	}
	core::kinematics::FoldTree fold_tree_from_dssp_string ( std::string dssp_string ) {
		core::kinematics::FoldTree ft = core::kinematics::FoldTree();
		utility::vector1< std::pair< core::Size, core::Size > > ss_bounds;
    	ss_bounds = identify_secondary_structure_spans( dssp_string );

		core::Size root_res = ss_bounds[1].second - ((ss_bounds[1].second - ss_bounds[1].first) / 2);
		
    if (root_res != 1) {
      ft.add_edge( root_res, 1, core::kinematics::Edge::PEPTIDE );
    }
    if (root_res != ss_bounds[1].second) {
      ft.add_edge( root_res, ss_bounds[1].second, core::kinematics::Edge::PEPTIDE );
    }

    core::Size jump_counter = 1;
    for (core::Size i=2; i <= ss_bounds.size(); i++) {
    	core::Size loop_start = ss_bounds[i-1].second + 1;
      	core::Size loop_end = ss_bounds[i].first - 1;
      	core::Size loop_mid = loop_end - ((loop_end - loop_start) / 2);
     	ft.add_edge( root_res,  loop_mid, jump_counter);
      	++jump_counter;
      	if (loop_mid != loop_start) {
        	ft.add_edge( loop_mid, loop_start, core::kinematics::Edge::PEPTIDE );
      	}
      	if (loop_mid != loop_end) {
        	ft.add_edge( loop_mid, loop_end, core::kinematics::Edge::PEPTIDE );
      	}
      	core::Size ss_start = ss_bounds[i].first;
      	core::Size ss_end = ss_bounds[i].second;
      	core::Size ss_mid = ss_end - ((ss_end - ss_start) / 2);
      	ft.add_edge( root_res, ss_mid, jump_counter);
      	++jump_counter;
      	if (ss_mid != ss_start) {
        	ft.add_edge( ss_mid, ss_start, core::kinematics::Edge::PEPTIDE );
      	}
      	if (ss_mid != ss_end) {
        	ft.add_edge( ss_mid, ss_end, core::kinematics::Edge::PEPTIDE );
      	}
    }
	return ft;
	};

	

	// --------------- Fixtures --------------- //

	// Define a test fixture (some initial state that several tests share)
	// In CxxTest, setUp()/tearDown() are executed around each test case. If you need a fixture on the test
	// suite level, i.e. something that gets constructed once before all the tests in the test suite are run,
	// suites have to be dynamically created. See CxxTest sample directory for example.


	// Shared initialization goes here.
	void setUp() {
		core_init();
		mypose = create_test_in_pdb_pose();
	}

	// Shared finalization goes here.
	void tearDown() {
	}

	// --------------- Test Cases --------------- //
	void test_hello_world() {
	TS_ASSERT( true );
	}

	void test_input_one() {
		std::string test_input_string1 = "   EEEEE   HHHHHHHH  EEEEE   IGNOR EEEEEE   HHHHHHHHHHH  EEEEE  HHHH   ";
		utility::vector1< std::pair< core::Size, core::Size > > test_out = identify_secondary_structure_spans(test_input_string1);
		TS_ASSERT( test_out[2].first == 12 );
	}

	void test_input_two() {
		std::string test_input_string2 = "HHHHHHH   HHHHHHHHHHHH      HHHHHHHHHHHHEEEEEEEEEEHHHHHHH EEEEHHH ";
		utility::vector1< std::pair< core::Size, core::Size > > test_out = identify_secondary_structure_spans(test_input_string2);
		TS_ASSERT( test_out[2].first == 11 );
	}

	void test_input_three() {
		std::string test_input_string3 = "EEEEEEEEE EEEEEEEE EEEEEEEEE H EEEEE H H H EEEEEEEE";
		utility::vector1< std::pair< core::Size, core::Size > > test_out = identify_secondary_structure_spans(test_input_string3);
		TS_ASSERT( test_out[2].first == 11 );
	}
	void test_fold_tree_from_ss() {
		core::kinematics::FoldTree ft_test = fold_tree_from_ss();
		std::cout << ft_test << std::endl;
		TS_ASSERT( ft_test.check_fold_tree() );
	}
};
