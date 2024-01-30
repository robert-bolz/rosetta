// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// // vi: set ts=2 noet:
// //
// // (c) Copyright Rosetta Commons Member Institutions.
// // (c) This file is part of the Rosetta software suite and is made available under license.
// // (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// // (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// // (c) addressed to University of Washington UW TechTransfer, email: license@u.washington.edu.

#include <iostream> //this block of includes covers runnning and input files
#include <basic/options/option.hh>
#include <basic/options/keys/in.OptionKeys.gen.hh>
#include <devel/init.hh> 
#include <utility/pointer/owning_ptr.hh>
#include <utility/vector1.hh>

#include <core/pose/Pose.fwd.hh> //pose incluse statement
#include <core/pose/Pose.hh>
#include <core/import_pose/import_pose.hh>

#include <core/scoring/ScoreFunction.hh> //score function includes
#include <core/scoring/ScoreFunction.fwd.hh>
#include <core/scoring/ScoreFunctionFactory.hh>
#include <core/types.hh>

#include <numeric/random/random.hh> //random and montecarlo includes
#include <protocols/moves/MonteCarlo.hh>

#include <protocols/moves/PyMOLMover.hh> //pymol viewer includes

#include <core/pack/task/PackerTask.hh> //packing include statements
#include <core/pack/task/TaskFactory.hh>
#include <core/pack/pack_rotamers.hh>

#include <core/kinematics/MoveMap.hh> //MoveMap and minimization includes
#include <core/optimization/MinimizerOptions.hh>
#include <core/optimization/AtomTreeMinimizer.hh>

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

core::scoring::ScoreFunctionOP sfxn = core::scoring::get_score_function(); //creates an Owning Pointer of the default score function

core::Real score = sfxn->score( * mypose ); //store score
std::cout << score << std::endl;

//PyMOL viewer code below
protocols::moves::PyMOLObserverOP the_observer = protocols::moves::AddPyMOLObserver( *mypose, true, 0 );
the_observer->pymol().apply( *mypose);

//MoveMap instantiate and other minimization objects
core::kinematics::MoveMap mm;
mm.set_bb( true );
mm.set_chi( true );
core::optimization::MinimizerOptions min_opts( "lbfgs_armijo_atol", 0.01, true );
core::optimization::AtomTreeMinimizer atm;
core::pose::Pose copy_pose; //creating a copy of mypose to speed up code

//main for loop for perturb and boltzmann monte carlo
protocols::moves::MonteCarlo mc = protocols::moves::MonteCarlo( * mypose , * sfxn , 1.0 );
core::Size total_residues = mypose->size();
for (core::Size i = 1; i <= 5; i++) {
	core::Real uniform_random_number = numeric::random::uniform();
	core::Size randres = static_cast< core::Size > ( uniform_random_number * total_residues + 1 );
	core::Real pert1 = numeric::random::gaussian();
	core::Real pert2 = numeric::random::gaussian();
	core::Real orig_phi = mypose->phi( randres );
	core::Real orig_psi = mypose->psi( randres );
	mypose->set_phi( randres, orig_phi + pert1 );
	mypose->set_psi( randres, orig_psi + pert2 );
	bool test_bool = mc.boltzmann( * mypose );
	std::cout << test_bool << std::endl;

	core::pack::task::PackerTaskOP repack_task = core::pack::task::TaskFactory::create_packer_task( *mypose );
	repack_task->restrict_to_repacking();
	core::pack::pack_rotamers( *mypose, *sfxn, repack_task );

	copy_pose = *mypose; //assign copy
	atm.run( copy_pose, mm, *sfxn, min_opts ); //minimize
	*mypose = copy_pose; //set pointer to copy

}
return 0;
}


