// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file protocols/bootcamp/BootCampMover.hh
/// @brief 2024_bootcamp_mover_subclass
/// @author robert-bolz (robert.mac.bolz@gmail.com)

#ifndef INCLUDED_protocols_bootcamp_BootCampMover_HH
#define INCLUDED_protocols_bootcamp_BootCampMover_HH

// Unit headers
#include <protocols/bootcamp/BootCampMover.fwd.hh>
#include <protocols/moves/Mover.hh>

// Protocol headers
#include <protocols/filters/Filter.fwd.hh>

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
#include <basic/datacache/DataMap.fwd.hh>
//#include <utility/tag/XMLSchemaGeneration.fwd.hh> //transcluded from Mover

#include <basic/citation_manager/UnpublishedModuleInfo.fwd.hh>

namespace protocols {
namespace bootcamp {

///@brief 2017_bootcamp_mover_subclass
class BootCampMover : public protocols::moves::Mover {

public:

	/////////////////////
	/// Constructors  ///
	/////////////////////

	/// @brief Default constructor
	BootCampMover();

	/// @brief Destructor (important for properly forward-declaring smart-pointer members)
	~BootCampMover() override;


public:

	/////////////////////
	/// Mover Methods ///
	/////////////////////
	core::scoring::ScoreFunctionOP
	get_score_function();

	void 
	set_score_function(core::scoring::ScoreFunctionOP sfxn);

	/// @brief Apply the mover
	void
	apply( core::pose::Pose & mypose ) override;

	void
	show( std::ostream & output = std::cout ) const override;


public:

	///////////////////////////////
	/// Rosetta Scripts Support ///
	///////////////////////////////

	/// @brief parse XML tag (to use this Mover in Rosetta Scripts)
	void
	parse_my_tag(
		utility::tag::TagCOP tag,
		basic::datacache::DataMap & data ) override;

	//BootCampMover & operator=( BootCampMover const & src );

	/// @brief required in the context of the parser/scripting scheme
	protocols::moves::MoverOP
	fresh_instance() const override;

	/// @brief required in the context of the parser/scripting scheme
	protocols::moves::MoverOP
	clone() const override;

	std::string
	get_name() const override;

	static
	std::string
	mover_name();

	static
	void
	provide_xml_schema( utility::tag::XMLSchemaDefinition & xsd );

public: //Function overrides needed for the citation manager:

	/// @brief This mover is unpublished.  It returns robert-bolz as its author.
	void provide_citation_info(basic::citation_manager::CitationCollectionList & citations) const override;

private: // methods


private: // data
	core::scoring::ScoreFunctionOP sfxn_;
};

std::ostream &
operator<<( std::ostream & os, BootCampMover const & mover );

} //bootcamp
} //protocols

#endif //protocols_bootcamp_BootCampMover_HH
