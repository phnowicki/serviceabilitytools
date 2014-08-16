#===============================================================================
#
# FILE: CUCM\CiscoSOAP-CallRecordService\status.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Sat Aug 16 02:05:34 2014
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


	Scenario: Check the status of a stopped "Cisco SOAP - CallRecord Service" service
	When we submit a request for the status of the "Cisco SOAP - CallRecord Service" service
	And the "Cisco SOAP - CallRecord Service" service is "stopped"
	Then we should receive "STOPPED" message

	Scenario: Check the status of a running "Cisco SOAP - CallRecord Service" service
	When we submit a request for the status of the "Cisco SOAP - CallRecord Service" service
	And the "Cisco SOAP - CallRecord Service" service is "running"
	Then we should receive "STARTED" message

	Scenario: Check the status of a hung "Cisco SOAP - CallRecord Service" service
	When we submit a request for the status of the "Cisco SOAP - CallRecord Service" service
	And the "Cisco SOAP - CallRecord Service" service is "so slow it's not really responding"
	Then we should receive "HUNG" message