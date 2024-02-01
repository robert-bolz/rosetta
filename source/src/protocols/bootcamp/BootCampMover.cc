// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file protocols/bootcamp/BootCampMover.cc
/// @brief 2024_bootcamp_mover_subclass
/// @author robert-bolz (robert.mac.bolz@gmail.com)

// Unit headers
#include <protocols/bootcamp/BootCampMover.hh>
#include <protocols/bootcamp/BootCampMoverCreator.hh>

// Core headers
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

// Basic/Utility headers
#include <basic/Tracer.hh>
#include <utility/tag/Tag.hh>
#include <utility/pointer/memory.hh>

// XSD Includes
#include <utility/tag/XMLSchemaGeneration.hh>
#include <protocols/moves/mover_schemas.hh>

// Citation Manager
#include <utility/vector1.hh>
#include <basic/citation_manager/UnpublishedModuleInfo.hh>

static basic::Tracer TR( "protocols.bootcamp.BootCampMover" );

namespace protocols {
namespace bootcamp {

	/////////////////////
	/// Constructors  ///
	/////////////////////

/// @brief Default constructor
BootCampMover::BootCampMover():
	protocols::moves::Mover( BootCampMover::mover_name() )
{

}

////////////////////////////////////////////////////////////////////////////////
/// @brief Destructor (important for properly forward-declaring smart-pointer members)
BootCampMover::~BootCampMover(){}

////////////////////////////////////////////////////////////////////////////////
	/// Mover Methods ///
	/////////////////////

/// @brief Apply the mover

core::scoring::ScoreFunctionOP BootCampMover::get_score_function() { return sfxn_; }

void BootCampMover::set_score_function(core::scoring::ScoreFunctionOP sfxn) {
	sfxn_ = sfxn;
}

core::Size BootCampMover::get_num_iterations() { return num_iterations_; }

void BootCampMover::set_num_iterations(core::Size num_iterations) {
	num_iterations_ = num_iterations;
}

void BootCampMover::apply( core::pose::Pose& mypose){

//core::scoring::ScoreFunctionOP sfxn = core::scoring::get_score_function(); //creates an Owning Pointer of the default score function
//set_score_function(sfxn)
sfxn_->set_weight(core::scoring::linear_chainbreak, 1.0);

core::Real score = sfxn_->score( mypose ); //store score
std::cout << score << std::endl;

//MoveMap instantiate and other minimization objects
core::kinematics::MoveMap mm;
mm.set_bb( true );
mm.set_chi( true );
core::optimization::MinimizerOptions min_opts( "lbfgs_armijo_atol", 0.01, true );
core::optimization::AtomTreeMinimizer atm;
core::pose::Pose copy_pose; //creating a copy of mypose to speed up code

//montecarlo object and other variables before starting for loop
protocols::moves::MonteCarlo mc = protocols::moves::MonteCarlo( mypose , * sfxn_ , 1.0 );
core::Size total_residues = mypose.size();
core::Real mc_accept_sum = 0;
core::Real pose_energy_sum = 0;

//Create FoldTree for pose, before perturbing structure in loop
core::kinematics::FoldTree ft_test = protocols::bootcamp::fold_tree_from_ss( mypose );
core::pose::correctly_add_cutpoint_variants( mypose );

//main for loop for perturb and boltzmann monte carlo
for (core::Size i = 1; i <= num_iterations_; i++) {
	core::Real uniform_random_number = numeric::random::uniform();
	core::Size randres = static_cast< core::Size > ( uniform_random_number * total_residues + 1 );
	core::Real pert1 = numeric::random::gaussian();
	core::Real pert2 = numeric::random::gaussian();
	core::Real orig_phi = mypose.phi( randres );
	core::Real orig_psi = mypose.psi( randres );
	mypose.set_phi( randres, orig_phi + pert1 );
	mypose.set_psi( randres, orig_psi + pert2 );
	pose_energy_sum += mc.last_score();
	core::Real test_bool = mc.boltzmann( mypose );
	//std::cout << test_bool << pose_energy_sum << std::endl;
	mc_accept_sum += test_bool;
	core::pack::task::PackerTaskOP repack_task = core::pack::task::TaskFactory::create_packer_task( mypose );
	repack_task->restrict_to_repacking();
	core::pack::pack_rotamers( mypose, *sfxn_, repack_task );

	copy_pose = mypose; //assign copy
	atm.run( copy_pose, mm, *sfxn_, min_opts ); //minimize
	mypose = copy_pose; //set pointer to copy

	if (i % 100 == 0) {
		core::Real mc_accept_rate = mc_accept_sum / i;
		core::Real pose_avg_energy = pose_energy_sum / i;
		std::cout << "The Monte Carlo acceptance rate is: " <<  mc_accept_rate << std::endl;
		std::cout << "The average pose energy is: " << pose_avg_energy << std::endl;
	}
	}
}

////////////////////////////////////////////////////////////////////////////////
/// @brief Show the contents of the Mover
void
BootCampMover::show(std::ostream & output) const
{
	protocols::moves::Mover::show(output);
}

////////////////////////////////////////////////////////////////////////////////
	/// Rosetta Scripts Support ///
	///////////////////////////////

/// @brief parse XML tag (to use this Mover in Rosetta Scripts)
void
BootCampMover::parse_my_tag(
	utility::tag::TagCOP ,
	basic::datacache::DataMap&
) {

}
void BootCampMover::provide_xml_schema( utility::tag::XMLSchemaDefinition & xsd )
{

	using namespace utility::tag;
	AttributeList attlist;

	//here you should write code to describe the XML Schema for the class.  If it has only attributes, simply fill the probided AttributeList.

	protocols::moves::xsd_type_definition_w_attributes( xsd, mover_name(), "2017_bootcamp_mover_subclass", attlist );
}


////////////////////////////////////////////////////////////////////////////////
/// @brief required in the context of the parser/scripting scheme
protocols::moves::MoverOP
BootCampMover::fresh_instance() const
{
	return utility::pointer::make_shared< BootCampMover >();
}

/// @brief required in the context of the parser/scripting scheme
protocols::moves::MoverOP
BootCampMover::clone() const
{
	return utility::pointer::make_shared< BootCampMover >( *this );
}

std::string BootCampMover::get_name() const {
	return mover_name();
}

std::string BootCampMover::mover_name() {
	return "BootCampMover";
}



/////////////// Creator ///////////////

protocols::moves::MoverOP
BootCampMoverCreator::create_mover() const
{
	return utility::pointer::make_shared< BootCampMover >();
}

std::string
BootCampMoverCreator::keyname() const
{
	return BootCampMover::mover_name();
}

void BootCampMoverCreator::provide_xml_schema( utility::tag::XMLSchemaDefinition & xsd ) const
{
	BootCampMover::provide_xml_schema( xsd );
}

/// @brief This mover is unpublished.  It returns robert-bolz as its author.
void
BootCampMover::provide_citation_info(basic::citation_manager::CitationCollectionList & citations ) const {
	citations.add(
		utility::pointer::make_shared< basic::citation_manager::UnpublishedModuleInfo >(
		"BootCampMover", basic::citation_manager::CitedModuleType::Mover,
		"robert-bolz",
		"TODO: institution",
		"robert.mac.bolz@gmail.com",
		"Wrote the BootCampMover."
		)
	);
}


////////////////////////////////////////////////////////////////////////////////
	/// private methods ///
	///////////////////////

std::ostream &
operator<<( std::ostream & os, BootCampMover const & mover )
{
	mover.show(os);
	return os;
}


} //bootcamp
} //protocols
