Profile:      AuditFAISCoverageEligibilityResponseRead
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientRead
Id:           IHE.FAIS.Audit.CoverageEligibilityResponse.Read
Title:        "Audit Event for Check Coverage Eligibility Status Transaction by the Coverage Requestor and Claims Manager for Read"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Check Coverage Eligibility Status Transaction happens
to read a CoverageEligibilityResponse, as recorded by the Coverage Requestor and Claims Manager.
"""
* subtype 2..*
* subtype contains iti125 1..1
* subtype[iti125] = urn:ihe:event-type-code#ITI-125 "Check Coverage Eligibility Status"
* agent[client] ^short = "Coverage Requestor"
* agent[server] ^short = "Claims Manager"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(CoverageEligibilityResponse)

Profile:      AuditFAISCoverageEligibilityResponseQuery
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientQuery
Id:           IHE.FAIS.Audit.CoverageEligibilityResponse.Query
Title:        "Audit Event for Check Coverage Eligibility Status Transaction by the Coverage Requestor and Claims Manager for Query"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Check Coverage Eligibility Status Transaction happens
to query a CoverageEligibilityResponse, as recorded by the Coverage Requestor and Claims Manager.
"""
* subtype 2..*
* subtype contains iti125 1..1
* subtype[iti125] = urn:ihe:event-type-code#ITI-125 "Check Coverage Eligibility Status"
* agent[client] ^short = "Coverage Requestor"
* agent[server] ^short = "Claims Manager"