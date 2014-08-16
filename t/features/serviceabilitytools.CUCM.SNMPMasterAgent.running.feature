#===============================================================================
#
# FILE: serviceabilitytools.CUCM.SNMPMasterAgent.running.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Sat Aug 16 01:51:13 2014
# REVISION: 3
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco CUCM version "any" is accessible
And role of the server is "any" 
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Start "SNMP Master Agent" service
	When we submit a request to start "SNMP Master Agent" service
	And the "SNMP Master Agent" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "SNMP Master Agent" service should be "STARTED"

	Scenario: Stop "SNMP Master Agent" service
	When we submit a request to stop "SNMP Master Agent" service
	And the "SNMP Master Agent" service is "started"
	Then we should receive "STOPPED" message
	And the status of "SNMP Master Agent" service should be "STOPPED"

	Scenario: Restart "SNMP Master Agent" service
	When we submit a request to restart "SNMP Master Agent" service
	And the "SNMP Master Agent" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "SNMP Master Agent" service should be "STARTED"
	And the up time of "SNMP Master Agent" service should be less than 1 minute

	Scenario: Restart "SNMP Master Agent" service that is stopped
	When we submit a request to restart "SNMP Master Agent" service
	And the "SNMP Master Agent" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "SNMP Master Agent" service should be "STARTED"
	And the up time of "SNMP Master Agent" service should be less than 1 minute

	Scenario: Start "SNMP Master Agent" service that is already started
	When we submit a request to start "SNMP Master Agent" service
	And the "SNMP Master Agent" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "SNMP Master Agent" service should be "STARTED"

	Scenario: Stop "SNMP Master Agent" service that is already stopped
	When we submit a request to stop "SNMP Master Agent" service
	And the "SNMP Master Agent" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "SNMP Master Agent" service should be "STOPPED"