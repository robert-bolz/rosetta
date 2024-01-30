// -*- mode:c++;tab-width:2;indent-tabs-mode:t;show-trailing-whitespace:t;rm-trailing-spaces:t -*-
// vi: set ts=2 noet:
//
// (c) Copyright Rosetta Commons Member Institutions.
// (c) This file is part of the Rosetta software suite and is made available under license.
// (c) The Rosetta software is developed by the contributing members of the Rosetta Commons.
// (c) For more information, see http://www.rosettacommons.org. Questions about this can be
// (c) addressed to University of Washington CoMotion, email: license@uw.edu.

/// @file  protocols/bootcamp/QueueTests.cxxtest.hh
/// @brief  Tests for the Queue class
/// @author robert-bolz (robert.mac.bolz@gmail.com)


// Test headers
#include <test/UMoverTest.hh>
#include <test/UTracer.hh>
#include <cxxtest/TestSuite.h>
#include <test/util/pose_funcs.hh>
#include <test/core/init_util.hh>

// Project Headers
#include <protocols/bootcamp/Queue.hh>
#include <utility/VirtualBase.hh>

// Core Headers
#include <core/pose/Pose.hh>
#include <core/import_pose/import_pose.hh>

// Utility, etc Headers
#include <basic/Tracer.hh>

static basic::Tracer TR("QueueTests");


class QueueTests : public CxxTest::TestSuite {
	//Define Variables
	
public:
	void setUp() {
		core_init();
		protocols::bootcamp::Queue queue_;
	}

	void tearDown() {
	}

	void test_first() {
		TS_TRACE( "This is my first test" );
		TS_ASSERT( true );
	}

	void test_empty() {
		TS_ASSERT(queue_.is_empty() == true);
    	TS_TRACE( "This list is empty after initialization" );
	}

	void test_enqueue() {
		std::string var_ = "3";
		queue_.enqueue(var_);
		TS_ASSERT(queue_.is_empty() == false);
		TS_TRACE( "This list is not empty after enqueue" );
	}

	void test_size() {
		TS_ASSERT(queue_.size() == 1);
		TS_TRACE( "This list has size 1" );
	}

	void test_dequeue() {
		queue_.dequeue();
		std::string var_ = "3";
		TS_ASSERT(queue_.is_empty() == true);
    	TS_TRACE( "This list is empty after dequeue" );
	}
	
	void test_dequeue_while_empty() {
		if (queue_.is_empty() == true) {
			TS_ASSERT_THROWS_ANYTHING(queue_.dequeue());
    		TS_TRACE( "Dequeueing an empty list will result in an error" );
		}
		
	}

private:
	protocols::bootcamp::Queue queue_;

};
