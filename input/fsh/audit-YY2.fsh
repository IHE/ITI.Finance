Profile:      AuditFAISInsurancePlanRead
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Read
Id:           IHE.FAIS.Audit.InsurancePlan.Read
Title:        "Audit Event for Query Insurance Plan Transaction by the Beneficiary Requestor and Beneficiary Manager for Read"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Query Insurance Plan Transaction happens
to read an InsurancePlan, as recorded by the Beneficiary Requestor and Beneficiary Manager.
"""
* subtype 2..*
* subtype contains itiYY2 1..1
* subtype[itiYY2] = urn:ihe:event-type-code#ITI-YY2 "Query Insurance Plan"
* agent[client] ^short = "Beneficiary Requestor"
* agent[server] ^short = "Beneficiary Manager"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(InsurancePlan)

Profile:      AuditFAISInsurancePlanQuery
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Query
Id:           IHE.FAIS.Audit.InsurancePlan.Query
Title:        "Audit Event for Query Insurance Plan Transaction by the Beneficiary Requestor and Beneficiary Manager for Query"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Query Insurance Plan Transaction happens
to query an InsurancePlan, as recorded by the Beneficiary Requestor and Beneficiary Manager.
"""
* subtype 2..*
* subtype contains itiYY2 1..1
* subtype[itiYY2] = urn:ihe:event-type-code#ITI-YY2 "Query Insurance Plan"
* agent[client] ^short = "Beneficiary Requestor"
* agent[server] ^short = "Beneficiary Manager"
