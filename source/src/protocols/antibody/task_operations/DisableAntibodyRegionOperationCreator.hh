// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file protocols/antibody/task_operations/AddCDRProfileSetsOperation.hh
/// @brief
/// @author Jared Adolf-Bryfogle (jadolfbr@gmail.com)


#ifndef INCLUDED_protocols_antibody_task_operations_DisableAntibodyRegionOperationCreator_fwd_hh
#define INCLUDED_protocols_antibody_task_operations_DisableAntibodyRegionOperationCreator_fwd_hh

#include <core/pack/task/operation/TaskOperationCreator.hh>


namespace protocols {
namespace antibody {
namespace task_operations {

class DisableAntibodyRegionOperationCreator : public core::pack::task::operation::TaskOperationCreator {
public:
	core::pack::task::operation::TaskOperationOP create_task_operation() const override;
	std::string keyname() const override;
	void provide_xml_schema( utility::tag::XMLSchemaDefinition & xsd ) const override;
};

} //task_operations
} //antibody
} //protocols

#endif //INCLUDED_protocols_antibody_task_operations_DisableAntibodyRegionOperation_hh

