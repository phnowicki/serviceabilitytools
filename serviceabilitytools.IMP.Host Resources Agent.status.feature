#===============================================================================
#
# FILE: serviceabilitytools.IMP.Host Resources Agent.status.feature
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


	Scenario: Check the status of a stopped "Host Resources Agent" service
	When we submit a request for the status of the "Host Resources Agent" service
	And the "Host Resources Agent" service is "stopped"
	Then we should receive "STOPPED" message

	Scenario: Check the status of a running "Host Resources Agent" service
	When we submit a request for the status of the "Host Resources Agent" service
	And the "Host Resources Agent" service is "running"
	Then we should receive "STARTED" message

	Scenario: Check the status of a hung "Host Resources Agent" service
	When we submit a request for the status of the "Host Resources Agent" service
	And the "Host Resources Agent" service is "so slow it's not really responding"
	Then we should receive "HUNG" message