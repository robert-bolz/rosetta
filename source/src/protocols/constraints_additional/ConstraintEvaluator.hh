// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file ClashEvaluator.hh
/// @brief
/// @details
///
///
///
/// @author Oliver Lange


#ifndef INCLUDED_protocols_constraints_additional_ConstraintEvaluator_hh
#define INCLUDED_protocols_constraints_additional_ConstraintEvaluator_hh

#include <protocols/constraints_additional/ConstraintEvaluator.fwd.hh>


// Unit Headers

// Package Headers
#include <protocols/evaluation/PoseEvaluator.hh>

// Project Headers
#include <core/pose/Pose.fwd.hh>

#include <core/scoring/constraints/Constraint.fwd.hh>




// ObjexxFCL Headers

// Utility headers

#include <core/scoring/constraints/ConstraintSet.fwd.hh>


//// C++ headers

#ifdef WIN32
#include <core/scoring/constraints/Constraint.hh>
#endif


namespace protocols {
namespace constraints_additional {

class ConstraintEvaluator : public evaluation::PoseEvaluator {
public:
	ConstraintEvaluator( std::string const & tag, core::scoring::constraints::ConstraintSet const &, core::Size viol_level = 0, core::Real threshold = 1.0, core::Size max_seq_sep = 0 );
	ConstraintEvaluator( std::string const & tag, core::scoring::constraints::ConstraintCOPs const &, core::Size viol_level = 0, core::Real threshold = 1.0, core::Size max_seq_sep = 0 );

	//constructor for a late input of constraints --- in case pose is not known at construction
	// ( will read only once with first pose that comes )
	ConstraintEvaluator( std::string const & tag, std::string const & filename, core::Size viol_level = 0, core::Real threshold = 1.0, core::Size max_seq_sep = 0 );

	//sets xxx_cst and xxx_viol columns
	void apply( core::pose::Pose& pose, std::string tag, core::io::silent::SilentStruct &pss) const override;

	using evaluation::PoseEvaluator::apply;

	//returns constraint score
	virtual core::Real apply( core::pose::Pose& pose ) const;

	core::Size size() const override { return 1; }
	std::string name( core::Size i ) const override;

	void set_combine_ratio( core::Size setting ) {
		constraints_combine_ratio_ = setting;
	}
	void set_cst_source( std::string const& tag ) {
		cst_source_ = tag;
	}

private:
	//add constraint set to pose --- ready for scoring
	void prepare_pose( core::pose::Pose const& pose_in, core::pose::Pose& pose ) const;

	std::string name_;
	mutable core::scoring::constraints::ConstraintSetOP constraints_; //mutable for late reading if file-name is provided
	mutable core::scoring::constraints::ConstraintSetOP fa_constraints_; //mutable for late reading if file-name is provided
	mutable bool tried_fullatom_pose_;
	mutable bool tried_centroid_pose_;
	std::string file_name_;
	// KAB - below line commented out by warnings removal script (-Wunused-private-field) on 2014-09-11
	// core::Size viol_level_;
	// KAB - below line commented out by warnings removal script (-Wunused-private-field) on 2014-09-11
	// core::Real threshold_;
	core::Size max_seq_sep_;
	core::Size constraints_combine_ratio_;
	std::string cst_source_;
};


}
}

#endif
