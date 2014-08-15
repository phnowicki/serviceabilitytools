#===============================================================================
#
# FILE: serviceabilitytools.IMP.SOAP -Performance Monitoring APIs.running.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Fri Aug 15 12:24:01 2014
# REVISION: 3
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco IMP version "any" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Start "SOAP -Performance Monitoring APIs" service
	When we submit a request to start "SOAP -Performance Monitoring APIs" service
	And the "SOAP -Performance Monitoring APIs" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"

	Scenario: Stop "SOAP -Performance Monitoring APIs" service
	When we submit a request to stop "SOAP -Performance Monitoring APIs" service
	And the "SOAP -Performance Monitoring APIs" service is "started"
	Then we should receive "STOPPED" message
	And the status of "SOAP -Performance Monitoring APIs" service should be "STOPPED"

	Scenario: Restart "SOAP -Performance Monitoring APIs" service
	When we submit a request to restart "SOAP -Performance Monitoring APIs" service
	And the "SOAP -Performance Monitoring APIs" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"
	And the up time of "SOAP -Performance Monitoring APIs" service should be less than 1 minute

	Scenario: Restart "SOAP -Performance Monitoring APIs" service that is stopped
	When we submit a request to restart "SOAP -Performance Monitoring APIs" service
	And the "SOAP -Performance Monitoring APIs" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"
	And the up time of "SOAP -Performance Monitoring APIs" service should be less than 1 minute

	Scenario: Start "SOAP -Performance Monitoring APIs" service that is already started
	When we submit a request to start "SOAP -Performance Monitoring APIs" service
	And the "SOAP -Performance Monitoring APIs" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"

	Scenario: Stop "SOAP -Performance Monitoring APIs" service that is already stopped
	When we submit a request to stop "SOAP -Performance Monitoring APIs" service
	And the "SOAP -Performance Monitoring APIs" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "SOAP -Performance Monitoring APIs" service should be "STOPPED"