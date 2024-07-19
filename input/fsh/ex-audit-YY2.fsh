Instance:     ex-AuditFAISInsurancePlanRead
InstanceOf:   AuditFAISInsurancePlanRead
Title:        "Audit example for ITI-YY2 for Beneficiary Requestor for read."
Description:  "Audit example for a Beneficiary Requestor requesting a read on a InsurancePlan for ITI-YY2."
Usage:        #example

* subtype[anyRead] = http://hl7.org/fhir/restful-interaction#read "read"
* subtype[itiYY2] = urn:ihe:event-type-code#ITI-YY2 "Query Insurance Plan"
* recorded = 2024-07-17T19:33:45Z
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-beneficiary-requestor)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110152 "Destination Role ID"
* agent[client].requestor = false
* agent[client].who = Reference(Device/ex-beneficiary-requestor)
* agent[client].network.address = "http://server.example.com/fhir"
* agent[client].network.type = http://hl7.org/fhir/network-type#5 "URI"
* agent[server].type = DCM#110153 "Source Role ID"
* agent[server].requestor = false
* agent[server].who = Reference(Device/ex-beneficiary-manager)
* agent[server].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[server].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* entity[data]
  * what = Reference(ex-insuranceplan-1)

Instance:     ex-AuditFAISInsurancePlanQuery
InstanceOf:   AuditFAISInsurancePlanQuery
Title:        "Audit example for ITI-YY2 for Beneficiary Manager for query."
Description:  "Audit example for a Beneficiary Manager requesting a query on a InsurancePlan for ITI-YY2."
Usage:        #example
* subtype[anySearch] = http://hl7.org/fhir/restful-interaction#search "search"
* subtype[itiYY2] = urn:ihe:event-type-code#ITI-YY2 "Query Insurance Plan"
* recorded = 2024-07-17T19:33:45Z
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-beneficiary-manager)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110153 "Source Role ID"
* agent[client].requestor = false
* agent[client].who = Reference(Device/ex-beneficiary-requestor)
* agent[client].network.address = "http://server.example.com/fhir"
* agent[client].network.type = http://hl7.org/fhir/network-type#5 "URI"
* agent[server].type = DCM#110152 "Destination Role ID"
* agent[server].requestor = false
* agent[server].who = Reference(Device/ex-beneficiary-manager)
* agent[server].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[server].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* entity[query].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[query].role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity[query].query = "YWRtaW5pc3RlcmVkX2J5PU9yZ2FuaXphdGlvbi9leC1pbnN1cmVyLTE="
