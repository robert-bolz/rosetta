// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file  core/pack/make_symmetric_task.hh
/// @brief utility functions for handling with symmetric conformations
/// @author Ingemar Andre

#ifndef INCLUDED_core_pack_make_symmetric_task_hh
#define INCLUDED_core_pack_make_symmetric_task_hh


// Project headers headers
#include <core/pose/Pose.fwd.hh>
#include <core/pack/task/PackerTask.fwd.hh>



namespace core {
namespace pack {

void
make_symmetric_PackerTask_by_truncation(
	pose::Pose const & pose,
	pack::task::PackerTaskOP task
);

// @brief make_union_symmetric_task
// @details make a symmetric task by union or intersection as specified in the Task
task::PackerTaskOP
make_new_symmetric_PackerTask_by_requested_method(
	pose::Pose const & pose,
	task::PackerTaskCOP non_symmetric_task
);

/// @brief Make a task symmetric (Using the logic of PackRotamersMover)
/// @details This is robust to being passed a non-symmetric pose
task::PackerTaskOP
make_symmetric_task(
	pose::Pose const & pose,
	task::PackerTaskCOP task
);

} // pack
} // core


#endif
