// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file protocols/moves/CyclicMover.cc
/// @author Christopher Miles (cmiles@uw.edu)

// Unit headers
#include <protocols/moves/CyclicMover.hh>

// C/C++ headers
#include <string>

// Project headers

// Package headers
#include <protocols/moves/Mover.hh>

#include <utility/assert.hh> // AUTO IWYU For debug_assert



namespace protocols {
namespace moves {

CyclicMover::CyclicMover() : iterations_(0) {}

void CyclicMover::enqueue(MoverOP mover) {
	debug_assert(mover);
	movers_.push_back(mover);
}

void CyclicMover::apply(core::pose::Pose& pose) {
	if ( movers_.size() == 0 ) return;
	MoverOP mover = movers_[iterations_++ % movers_.size()];
	mover->apply(pose);
}

MoverOP CyclicMover::clone() const {
	return utility::pointer::make_shared< CyclicMover >(*this);
}

MoverOP CyclicMover::fresh_instance() const {
	return utility::pointer::make_shared< CyclicMover >();
}

std::string CyclicMover::get_name() const {
	return "CyclicMover";
}

}  // namespace moves
}  // namespace protocols
