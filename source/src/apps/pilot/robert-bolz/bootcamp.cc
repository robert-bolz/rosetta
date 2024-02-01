// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// // vi: set ts=2 noet:
// //
// // (c) Copyright Rosetta Commons Member Institutions.
// // (c) This file is part of the Rosetta software suite and is made available under license.
// // (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// // (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// // (c) addressed to University of Washington UW TechTransfer, email: license@u.washington.edu.

//this block of includes covers runnning and input files
#include <iostream> 
#include <basic/options/option.hh>
#include <basic/options/keys/in.OptionKeys.gen.hh>
#include <devel/init.hh> 
#include <utility/pointer/owning_ptr.hh>
#include <utility/vector1.hh>

//pose incluse statement
#include <core/pose/Pose.fwd.hh> 
#include <core/pose/Pose.hh>
#include <core/import_pose/import_pose.hh>

//score function includes
#include <core/scoring/ScoreFunction.hh> 
#include <core/scoring/ScoreFunction.fwd.hh>
#include <core/scoring/ScoreFunctionFactory.hh>
#include <core/types.hh>

//random and montecarlo includes
#include <numeric/random/random.hh> 
#include <protocols/moves/MonteCarlo.hh>

//pymol viewer includes
#include <protocols/moves/PyMOLMover.hh> 

//packing include statements
#include <core/pack/task/PackerTask.hh> 
#include <core/pack/task/TaskFactory.hh>
#include <core/pack/pack_rotamers.hh>

//MoveMap and minimization includes
#include <core/kinematics/MoveMap.hh> 
#include <core/optimization/MinimizerOptions.hh>
#include <core/optimization/AtomTreeMinimizer.hh>

//FoldTree and necessary cutpoint includes
#include <protocols/moves/DsspMover.hh>
#include <core/scoring/dssp/Dssp.hh>
#include <core/kinematics/FoldTree.hh>
#include <protocols/bootcamp/fold_tree_from_ss.hh>
#include <core/pose/variant_util.hh>

//JobDistributor includes to use mover
#include <core/pack/task/operation/TaskOperations.hh>
#include <core/pack/task/TaskFactory.hh>
#include <protocols/jd2/JobDistributor.hh>
#include <protocols/bootcamp/BootCampMover.hh>

//using namespace core::import_pose; //only uncomment if I want to use namespace import pose
//using namespace core::pose; //only uncomment if I want to use namespace pose

int main( int argc, char ** argv ) {
std::cout << "Hello World!" << std::endl;
devel::init( argc, argv );
utility::vector1< std::string > filenames = basic::options::option[ basic::options::OptionKeys::in::file::s ].value();

if ( filenames.size() > 0 ) {
std::cout << "You entered: " << filenames[ 1 ] << " as the PDB file to be read" << std::endl;
} 
else {
	std::cout << "You didn’t provide a PDB file with the -in::file::s option" << std::endl;
	return 1;
}
core::pose::PoseOP mypose = core::import_pose::pose_from_file( filenames[1] ); //this stores the inputed file 'filenames[1]' as a pose using the pose class. Default checks if its a PDB

protocols::bootcamp::BootCampMoverOP bootcamp_mover( new protocols::bootcamp::BootCampMover)
protocols::jd2::JobDistributor::get_instance()->go(bootcamp_mover);
return 0;
}


