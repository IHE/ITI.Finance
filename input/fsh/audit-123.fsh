Profile:      AuditFAISEnrollmentResponseRead
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientRead
Id:           IHE.FAIS.Audit.EnrollmentResponse.Read
Title:        "Audit Event for Check Enrollment Status Transaction by the Beneficiary Requestor and Beneficiary Manager for Read"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Check Enrollment Status Transaction happens
to read an EnrollmentResponse, as recorded by the Beneficiary Requestor and Beneficiary Manager.
"""
* subtype 2..*
* subtype contains iti123 1..1
* subtype[iti123] = urn:ihe:event-type-code#ITI-123 "Check Enrollment Status"
* agent[client] ^short = "Beneficiary Requestor"
* agent[server] ^short = "Beneficiary Manager"
* entity[data]
  * role = http://terminology.hl7.org/CodeSystem/object-role#4 "Domain Resource"
  * what 1..1
  * what only Reference(EnrollmentResponse)

Profile:      AuditFAISEnrollmentResponseQuery
Parent:       https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientQuery
Id:           IHE.FAIS.Audit.EnrollmentResponse.Query
Title:        "Audit Event for Check Enrollment Status Transaction by the Beneficiary Requestor and Beneficiary Manager for Query"
Description:  """
Defines constraints on the AuditEvent Resource to record when a Check Enrollment Status Transaction happens
to query an EnrollmentResponse, as recorded by the Beneficiary Requestor and Beneficiary Manager.
"""
* subtype 2..*
* subtype contains iti123 1..1
* subtype[iti123] = urn:ihe:event-type-code#ITI-123 "Check Enrollment Status"
* agent[client] ^short = "Beneficiary Requestor"
* agent[server] ^short = "Beneficiary Manager"
