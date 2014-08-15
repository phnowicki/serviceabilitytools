#===============================================================================
#
# FILE: serviceabilitytools.IMP.A Cisco DB Replicator.running.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Fri Aug 15 12:48:50 2014
# REVISION: 3
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco IMP version "any" is accessible
And role of the server is "any" 
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Start "A Cisco DB Replicator" service
	When we submit a request to start "A Cisco DB Replicator" service
	And the "A Cisco DB Replicator" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "A Cisco DB Replicator" service should be "STARTED"

	Scenario: Stop "A Cisco DB Replicator" service
	When we submit a request to stop "A Cisco DB Replicator" service
	And the "A Cisco DB Replicator" service is "started"
	Then we should receive "STOPPED" message
	And the status of "A Cisco DB Replicator" service should be "STOPPED"

	Scenario: Restart "A Cisco DB Replicator" service
	When we submit a request to restart "A Cisco DB Replicator" service
	And the "A Cisco DB Replicator" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "A Cisco DB Replicator" service should be "STARTED"
	And the up time of "A Cisco DB Replicator" service should be less than 1 minute

	Scenario: Restart "A Cisco DB Replicator" service that is stopped
	When we submit a request to restart "A Cisco DB Replicator" service
	And the "A Cisco DB Replicator" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "A Cisco DB Replicator" service should be "STARTED"
	And the up time of "A Cisco DB Replicator" service should be less than 1 minute

	Scenario: Start "A Cisco DB Replicator" service that is already started
	When we submit a request to start "A Cisco DB Replicator" service
	And the "A Cisco DB Replicator" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "A Cisco DB Replicator" service should be "STARTED"

	Scenario: Stop "A Cisco DB Replicator" service that is already stopped
	When we submit a request to stop "A Cisco DB Replicator" service
	And the "A Cisco DB Replicator" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "A Cisco DB Replicator" service should be "STOPPED"