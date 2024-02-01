// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file   test/protocols/bootcamp/BootCampMover.cxxtest.hh
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
#include <core/kinematics/MoveMap.hh> 
#include <core/optimization/MinimizerOptions.hh>
#include <core/optimization/AtomTreeMinimizer.hh>
#include <protocols/moves/DsspMover.hh>
#include <core/scoring/dssp/Dssp.hh>
#include <core/kinematics/FoldTree.hh>
#include <protocols/bootcamp/fold_tree_from_ss.hh>
#include <core/pose/variant_util.hh>
#include <protocols/moves/PyMOLMover.hh>
#include <core/scoring/ScoreFunction.hh> 
#include <core/scoring/ScoreFunction.fwd.hh>
#include <core/scoring/ScoreFunctionFactory.hh>
#include <core/types.hh>
#include <numeric/random/random.hh> 
#include <protocols/moves/MonteCarlo.hh>
#include <core/pack/task/PackerTask.hh> 
#include <core/pack/task/TaskFactory.hh>
#include <core/pack/pack_rotamers.hh>
#include <protocols/moves/Mover.hh>
#include <protocols/moves/MoverFactory.hh>
#include <protocols/bootcamp/BootCampMover.hh>
// C++ headers

//Auto Headers
#include <core/pack/dunbrack/DunbrackRotamer.hh>


//using namespace protocols::match;
//using namespace protocols::match::upstream;


// --------------- Test Class --------------- //

class BootCampMover : public CxxTest::TestSuite {

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
	void test_bcm_op() {
		protocols::moves::MoverOP base_mover_op = protocols::moves::MoverFactory::get_instance()->newMover("BootCampMover");
		protocols::bootcamp::BootCampMoverOP bcm_op = utility::pointer::dynamic_pointer_cast< protocols::bootcamp::BootCampMover > ( base_mover_op );
		TS_ASSERT( bcm_op != 0 );
	}
	void test_score_function() {
		protocols::moves::MoverOP base_mover_op = protocols::moves::MoverFactory::get_instance()->newMover("BootCampMover");
		protocols::bootcamp::BootCampMoverOP bcm_op = utility::pointer::dynamic_pointer_cast< protocols::bootcamp::BootCampMover > ( base_mover_op );
		
		core::scoring::ScoreFunctionOP default_sfxn = bcm_op->get_score_function();
		std::cout << "Mac check here, the default sfxn is " << default_sfxn << std::endl;
		bcm_op->set_score_function(core::scoring::get_score_function());
		core::scoring::ScoreFunctionOP test_sfxn = bcm_op->get_score_function();
		std::cout << "Mac check here, the test sfxn is " << test_sfxn << std::endl;
		TS_ASSERT( default_sfxn != test_sfxn );
	}

	void test_num_iterations() {
		protocols::moves::MoverOP base_mover_op = protocols::moves::MoverFactory::get_instance()->newMover("BootCampMover");
		protocols::bootcamp::BootCampMoverOP bcm_op = utility::pointer::dynamic_pointer_cast< protocols::bootcamp::BootCampMover > ( base_mover_op );
		core::Size test_var = 300;
		bcm_op->set_num_iterations(test_var);
		core::Size test_num_iterations = bcm_op->get_num_iterations();
		std::cout << "Mac check here, the default iteration is " << test_num_iterations << std::endl;
		TS_ASSERT( 300 == test_num_iterations );
	}
};
