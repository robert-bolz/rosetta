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

#ifndef INCLUDED_protocols_bootcamp_fold_tree_from_ss_HH
#define INCLUDED_protocols_bootcamp_fold_tree_from_ss_HH

// Test headers
#include <basic/options/option.hh>
#include <basic/options/keys/in.OptionKeys.gen.hh>
#include <devel/init.hh> 

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

//Auto Headers
#include <core/pack/dunbrack/DunbrackRotamer.hh>

namespace protocols {
namespace bootcamp {

utility::vector1< std::pair< core::Size, core::Size > >
	identify_secondary_structure_spans( std::string const & ss_string );

core::kinematics::FoldTree fold_tree_from_ss (core::pose::Pose mypose );

core::kinematics::FoldTree fold_tree_from_dssp_string ( std::string dssp_string ); 
		
#endif

}
}