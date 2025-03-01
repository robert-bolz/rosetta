// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file   protocols/task_operations/ReadResfileFromDB.hh
/// @brief  read a refile indexed by the input structure tag from a supplied
///         relational database
/// @author Matthew O'Meara (mattjomeara@gmail.com)

#ifndef INCLUDED_protocols_task_operations_ReadResfileFromDB_hh
#define INCLUDED_protocols_task_operations_ReadResfileFromDB_hh

// Unit Headers
#include <protocols/task_operations/ReadResfileFromDB.fwd.hh>
#include <core/pack/task/operation/TaskOperation.hh>

// Project Headers
#include <core/pack/task/PackerTask.fwd.hh>
#include <core/pose/Pose.fwd.hh>
#include <core/select/residue_selector/ResidueSelector.fwd.hh>

// Utility Headers
#include <utility/tag/Tag.fwd.hh>
#include <utility/tag/XMLSchemaGeneration.fwd.hh>
#include <utility/sql_database/DatabaseSessionManager.fwd.hh>

#include <string>


namespace protocols {
namespace task_operations {

class ReadResfileFromDB : public core::pack::task::operation::TaskOperation{
public:
	typedef core::pack::task::operation::TaskOperation parent;

public:
	ReadResfileFromDB();

	ReadResfileFromDB(
		utility::sql_database::sessionOP db_session,
		std::string const & database_table);

	ReadResfileFromDB(ReadResfileFromDB const & src);

	~ReadResfileFromDB() override;

	core::pack::task::operation::TaskOperationOP clone() const override;

	void
	apply(core::pose::Pose const & pose, core::pack::task::PackerTask & task) const override;
	static void provide_xml_schema( utility::tag::XMLSchemaDefinition & xsd );

	void db_session(utility::sql_database::sessionOP db_session);

	void database_table(std::string const & database_table );
	std::string const & database_table() const;

	void selection_tag( std::string const & setting );
	std::string const & selection_tag() const;

	void residue_selector( core::select::residue_selector::ResidueSelectorCOP const & sel );
	core::select::residue_selector::ResidueSelectorCOP residue_selector() const;

	void parse_tag(utility::tag::TagCOP, DataMap &) override;
	static std::string keyname() { return "ReadResfileFromDB"; }

private:
	std::string database_table_;
	std::string selection_tag_;
	utility::sql_database::sessionOP db_session_;
	core::select::residue_selector::ResidueSelectorCOP residue_selector_;
};

} //namespace task_operations
} //namespace protocols

#endif // include guard
