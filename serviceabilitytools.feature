#===============================================================================
#
# FILE: serviceabilitytools.feature
#
# DESCRIPTION: Feature tests for BDD, heavily based on
# https://github.com/tudorconstantin/Mojolicious-Boilerplate
#
# AUTHOR: Patrick Nowicki (patrick.nowicki@cdw.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: 08/06/2014 00:53:00
# REVISION: ---
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco Call Manager version "any" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |

################################ Valid input

Scenario: Check the status of a stopped Tomcat service
When we submit a request for the status of the "Tomcat" service
And the "Tomcat" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running Tomcat service
When we submit a request for the status of the "Tomcat" service
And the "Tomcat" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung Tomcat service
When we submit a request for the status of the "Tomcat" service
And the "Tomcat" service is "so slow it's not really responding"
Then we should receive "HUNG" message



Scenario: Access service S status on target server T
When we submit a request for status of service S on target server T
Then we should receive "STOPPED" or "STARTED"
	
Scenario: Start service S on target server T
When we submit a request to start service S on target server T
And status of service S on target server T is "STOPPED" 
Then we should receive a "SUCCESS" response
And the status of service S on target server T should be "STARTED"

Scenario: Stop service S on target server T 
When we submit a request to stop service S on target server T
And status of service S on target server T is "STARTED" 
Then we should receive a "SUCCESS" response
And the status of service S on target server T should be "STOPPED"

Scenario: Restart service S on target server T 
When we submit a request to restart service S on target server T
And status of service S on target server T is "STARTED" 
Then we should receive a "SUCCESS" response
And the status of service S on target server T should be "STARTED"
And the uptime of service S on target server T should be less than 1 minute

Scenario: Activate service S on target server T 
When we submit a request to activate service S on target server T
And status of service S on target server T is "DEACTIVATED" 
Then we should receive a "SUCCESS" response
And the status of service S on target server T should be "ACTIVATED"

Scenario: Deactivate service S on target server T 
When we submit a request to deactivate service S on target server T
And status of service S on target server T is "ACTIVATED" 
Then we should receive a "SUCCESS" response
And the status of service S on target server T should be "DEACTIVATED"

Scenario: Query CUCM server for all servers in cluster
When we submit a request for all servers in the cluster
Then we should receive a list of hostnames, fqdns or IP Addresses

Scenario: Upload File to TFTP server
When we submit an upload of file F to a TFTP server
And file F is valid
Then we should receive a "SUCCESS" response
And file F should exist on the TFTP server

############################ Error handling

Scenario: Access invalid service S status on target server T
When we submit a request for status of invalid service S on target server T
Then we should receive a "FAILED" response

Scenario: Restart invalid service S on target server T
When we submit a request to restart invalid service S on target server T
Then we should receive a "FAILED" response

Scenario: Stop invalid service S on target server T
When we submit a request to stop invalid service S on target server T
Then we should receive a "FAILED" response

Scenario: Start invalid service S on target server T
When we submit a request to start invalid service S on target server T
Then we should receive a "FAILED" response

Scenario: Activate invalid service S on target server T
When we submit a request to activate invalid service S on target server T
Then we should receive a "FAILED" response

Scenario: Deactivate invalid service S on target server T
When we submit a request to deactivate invalid service S on target server T
Then we should receive a "FAILED" response
