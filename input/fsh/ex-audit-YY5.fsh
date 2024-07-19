Instance:     ex-AuditFAISSubmitClaim
InstanceOf:   AuditFAISSubmitClaim
Title:        "Audit example for ITI-YY5 for Claims Requestor for submit."
Description:  "Audit example for a Claims Requestor requesting a submit on a Claim for ITI-YY5."
Usage:        #example

* subtype[anyCreate] = http://hl7.org/fhir/restful-interaction#create "create"
* subtype[itiYY5] = urn:ihe:event-type-code#ITI-YY5 "Submit Claim"
* recorded = 2024-07-17T19:33:45Z
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-claims-requestor)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110153 "Source Role ID"
* agent[client].requestor = false
* agent[client].who = Reference(Device/ex-claims-requestor)
* agent[client].network.address = "http://server.example.com/fhir"
* agent[client].network.type = http://hl7.org/fhir/network-type#5 "URI"
* agent[server].type = DCM#110152 "Destination Role ID"
* agent[server].requestor = false
* agent[server].who = Reference(Device/ex-claims-manager)
* agent[server].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[server].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* entity[data]
  * what = Reference(ex-claim-3)
* entity[patient]
  * what = Reference(ex-beneficiary-1)
