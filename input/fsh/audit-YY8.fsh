Profile:      AuditFAISCancelClaim
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientUpdate
Id:           IHE.FAIS.Audit.Claim.Cancel
Title:        "Audit Event for Cancel Claim Transaction by the Claims Requestor and Claims Manager for Update"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Cancel Claim Transaction happens
to call the $cancel operation on a Claims Manager, as recorded by the Claims Requestor and Claims Manager.
"""
* subtype 2..*
* subtype contains itiYY8 1..1
* subtype[itiYY8] = urn:ihe:event-type-code#ITI-YY8 "Cancel Claim"
* agent[client] ^short = "Claims Requestor"
* agent[server] ^short = "Claims Manager"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(Claim)