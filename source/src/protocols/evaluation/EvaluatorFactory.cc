// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file   protocols/evaluation/EvaluatorFactory.cc
/// @brief  Factory for creating Evaluators objects
/// @author Matthew O'Meara (mattjomeara@gmail.com)

// Unit Headers
#include <protocols/evaluation/EvaluatorFactory.hh>
#include <protocols/evaluation/PoseEvaluator.fwd.hh>
#include <protocols/evaluation/EvaluatorCreator.hh>

// Package Headers
#include <basic/Tracer.hh>
#include <utility/tag/Tag.fwd.hh>

// Project Headers
#include <core/scoring/ScoreFunction.fwd.hh>

// Utility Headers

// C++ Headers
#include <sstream>

// Boost headers

namespace protocols {
namespace evaluation {

using std::endl;
using std::string;
using std::stringstream;
using core::scoring::ScoreFunctionOP;
using utility::tag::TagCOP;

static basic::Tracer tr( "protocols.evaluator.EvaluatorFactory" );


/// @details Private constructor insures correctness of singleton.
EvaluatorFactory::EvaluatorFactory() = default;

EvaluatorFactory::~EvaluatorFactory() = default;

void
EvaluatorFactory::factory_register(
	EvaluatorCreatorCOP creator
) {
	types_.emplace_back(creator->type_name(), creator);
}


void
EvaluatorFactory::add_evaluators(
	string const & type_name,
	MetaPoseEvaluator & eval
) {

	tr.Trace << "generate Evaluator of type " << type_name << std::endl;

	bool found(false);

	for ( EvaluatorCreatorMap::const_iterator type = types_.begin(), type_end = types_.end(); type != type_end; ++type ) {
		if ( type->first == type_name ) {
			type->second->add_evaluators(eval);
			found=true;
			break;
		}
	}
	if ( !found ) {
		stringstream error_msg;
		error_msg
			<< "Attempting to create unrecognized Evaluator "
			<< "'" << type_name << "'." << endl
			<< "check spelling or "
			<< "register a new Evaluator in the EvaluatorFactory" << endl
			<< "known Evaluator types are:" << endl;

		for ( EvaluatorCreatorMap::const_iterator type = types_.begin(), type_end = types_.end(); type != type_end; ++type ) {
			error_msg << "\t" << type->first << endl;
		}
		utility_exit_with_message(error_msg.str());
	}
}

void
EvaluatorFactory::add_all_evaluators(
	MetaPoseEvaluator & eval
) {

	for ( EvaluatorCreatorMap::const_iterator type = types_.begin(), type_end = types_.end(); type != type_end; ++type ) {
		type->second->add_evaluators(eval);
	}
}

} // namespace
} // namespace
