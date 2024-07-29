Profile:      AuditFAISEnrollBeneficiary
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientCreate
Id:           IHE.FAIS.Audit.EnrollmentRequest.Submit
Title:        "Audit Event for Enroll Beneficiary Transaction by the Beneficiary Requestor and Beneficiary Manager for Create"
Description:  """
Defines constraints on the AuditEvent Resource to record when an Enroll Beneficiary Transaction happens
to call the $submit operation on a Beneficiary Manager, as recorded by the Beneficiary Requestor and Beneficiary Manager.
"""
* subtype 2..*
* subtype contains itiYY1 1..1
* subtype[itiYY1] = urn:ihe:event-type-code#ITI-YY1 "Enroll Beneficiary"
* agent[client] ^short = "Beneficiary Requestor"
* agent[server] ^short = "Beneficiary Manager"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(EnrollmentRequest)