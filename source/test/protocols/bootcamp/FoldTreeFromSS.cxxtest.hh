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
#include <protocols/bootcamp/fold_tree_from_ss.hh>
// C++ headers

//Auto Headers
#include <core/pack/dunbrack/DunbrackRotamer.hh>


//using namespace protocols::match;
//using namespace protocols::match::upstream;


// --------------- Test Class --------------- //

class FoldTreeFromSS : public CxxTest::TestSuite {

core::pose::Pose mypose;

public:

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
		utility::vector1< std::pair< core::Size, core::Size > > test_out = protocols::bootcamp::identify_secondary_structure_spans(test_input_string1);
		TS_ASSERT( test_out[2].first == 12 );
	}

	void test_input_two() {
		std::string test_input_string2 = "HHHHHHH   HHHHHHHHHHHH      HHHHHHHHHHHHEEEEEEEEEEHHHHHHH EEEEHHH ";
		utility::vector1< std::pair< core::Size, core::Size > > test_out = protocols::bootcamp::identify_secondary_structure_spans(test_input_string2);
		TS_ASSERT( test_out[2].first == 11 );
	}

	void test_input_three() {
		std::string test_input_string3 = "EEEEEEEEE EEEEEEEE EEEEEEEEE H EEEEE H H H EEEEEEEE";
		utility::vector1< std::pair< core::Size, core::Size > > test_out = protocols::bootcamp::identify_secondary_structure_spans(test_input_string3);
		TS_ASSERT( test_out[2].first == 11 );
	}
	void test_fold_tree_from_ss() {
		core::kinematics::FoldTree ft_test = protocols::bootcamp::fold_tree_from_ss( mypose );
		std::cout << ft_test << std::endl;
		TS_ASSERT( ft_test.check_fold_tree() );
	}
};
