Profile:      AuditFAISCheckCoverageEligibility
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientCreate
Id:           IHE.FAIS.Audit.CoverageEligibilityRequest.Submit
Title:        "Audit Event for Check Coverage Eligibility Transaction by the Coverage Requestor and Claims Manager for Create"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Check Coverage Eligibility Transaction happens
to call the $submit operation on a Claims Manager, as recorded by the Coverage Requestor and Claims Manager.
"""
* subtype 2..*
* subtype contains itiYY4 1..1
* subtype[itiYY4] = urn:ihe:event-type-code#ITI-YY4 "Check Coverage Eligibility"
* agent[client] ^short = "Coverage Requestor"
* agent[server] ^short = "Claims Manager"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(CoverageEligibilityRequest)