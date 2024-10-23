Instance:     ex-AuditFAISClaimResponseRead
InstanceOf:   AuditFAISClaimResponseRead
Title:        "Audit example for ITI-129 for Claims Requestor for read."
Description:  "Audit example for a Claims Requestor requesting a read on a ClaimResponse for ITI-129."
Usage:        #example

* subtype[anyRead] = http://hl7.org/fhir/restful-interaction#read "read"
* subtype[iti129] = urn:ihe:event-type-code#ITI-129 "Track Claim"
* recorded = 2024-07-17T19:33:45Z
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-claims-requestor)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110152 "Destination Role ID"
* agent[client].requestor = false
* agent[client].who = Reference(Device/ex-claims-requestor)
* agent[client].network.address = "http://server.example.com/fhir"
* agent[client].network.type = http://hl7.org/fhir/network-type#5 "URI"
* agent[server].type = DCM#110153 "Source Role ID"
* agent[server].requestor = false
* agent[server].who = Reference(Device/ex-claims-manager)
* agent[server].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[server].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* entity[data]
  * what = Reference(ex-claim-response-acc-3)
* entity[patient]
  * what = Reference(ex-beneficiary-1)

Instance:     ex-AuditFAISClaimResponseQuery
InstanceOf:   AuditFAISClaimResponseQuery
Title:        "Audit example for ITI-129 for Claims Manager for query."
Description:  "Audit example for a Claims Manager requesting a query on a ClaimResponse for ITI-129."
Usage:        #example
* subtype[anySearch] = http://hl7.org/fhir/restful-interaction#search "search"
* subtype[iti129] = urn:ihe:event-type-code#ITI-129 "Track Claim"
* recorded = 2024-07-17T19:33:45Z
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-claims-manager)
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
* entity[query].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[query].role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity[query].query = "cmVxdWVzdD1DbGFpbS9leC1jbGFpbS0x"
* entity[patient]
  * what = Reference(ex-beneficiary-1)