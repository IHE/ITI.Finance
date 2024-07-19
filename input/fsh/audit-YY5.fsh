Profile:      AuditFAISSubmitClaim
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientCreate
Id:           IHE.FAIS.Audit.Claim.Submit
Title:        "Audit Event for Submit Claim Transaction by the Claims Requestor and Claims Manager for Create"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Submit Claim Transaction happens
to call the $submit operation on a Claims Manager, as recorded by the Claims Requestor and Claims Manager.
"""
* subtype 2..*
* subtype contains itiYY5 1..1
* subtype[itiYY5] = urn:ihe:event-type-code#ITI-YY5 "Submit Claim"
* agent[client] ^short = "Claims Requestor"
* agent[server] ^short = "Claims Manager"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(Claim)