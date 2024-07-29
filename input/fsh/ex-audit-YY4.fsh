Instance:     ex-AuditFAISCheckCoverageEligibility
InstanceOf:   AuditFAISCheckCoverageEligibility
Title:        "Audit example for ITI-YY4 for Coverage Requestor for submit."
Description:  "Audit example for a Coverage Requestor requesting a submit on a CoverageEligibilityRequest for ITI-YY4."
Usage:        #example

* subtype[anyCreate] = http://hl7.org/fhir/restful-interaction#create "create"
* subtype[itiYY4] = urn:ihe:event-type-code#ITI-YY4 "Check Coverage Eligibility"
* recorded = 2024-07-17T19:33:45Z
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-coverage-requestor)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110153 "Source Role ID"
* agent[client].requestor = false
* agent[client].who = Reference(Device/ex-coverage-requestor)
* agent[client].network.address = "http://server.example.com/fhir"
* agent[client].network.type = http://hl7.org/fhir/network-type#5 "URI"
* agent[server].type = DCM#110152 "Destination Role ID"
* agent[server].requestor = false
* agent[server].who = Reference(Device/ex-claims-manager)
* agent[server].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[server].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* entity[data]
  * what = Reference(ex-check-coverage-2)
* entity[patient]
  * what = Reference(ex-beneficiary-1)
