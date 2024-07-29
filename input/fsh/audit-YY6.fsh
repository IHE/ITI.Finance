Profile:      AuditFAISClaimResponseRead
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientRead
Id:           IHE.FAIS.Audit.ClaimResponse.Read
Title:        "Audit Event for Track Claim Transaction by the Claims Requestor and Claims Manager for Read"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Track Claim Transaction happens
to read a ClaimResponse, as recorded by the Coverage Requestor and Claims Manager.
"""
* subtype 2..*
* subtype contains itiYY6 1..1
* subtype[itiYY6] = urn:ihe:event-type-code#ITI-YY6 "Track Claim"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(ClaimResponse)
* agent[client] ^short = "Claims Requestor"
* agent[server] ^short = "Claims Manager"

Profile:      AuditFAISClaimResponseQuery
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientQuery
Id:           IHE.FAIS.Audit.ClaimResponse.Query
Title:        "Audit Event for Track Claim Transaction by the Coverage Requestor and Claims Manager for Query"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Track Claim Transaction happens
to query a ClaimResponse, as recorded by the Coverage Requestor and Claims Manager.
"""
* subtype 2..*
* subtype contains itiYY6 1..1
* subtype[itiYY6] = urn:ihe:event-type-code#ITI-YY6 "Track Claim"
* agent[client] ^short = "Claims Requestor"
* agent[server] ^short = "Claims Manager"