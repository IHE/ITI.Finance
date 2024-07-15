Profile: FAISEnrollmentRequest
Parent: EnrollmentRequest
Id: IHE.FAIS.EnrollmentRequest
Title: "FAIS EnrollmentRequest Profile"

* modifierExtension 0..0
* implicitRules 0..0

* insurer 1..1
* candidate 1..1
* coverage 1..1

Profile: FAISEnrollmentRequestBundle
Parent: Bundle
Id: IHE.FAIS.EnrollmentRequest.Bundle
Title: "FAIS EnrollmentRequest Bundle Profile"

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISEnrollmentRequest 1..1
  and Organization 0..1
  and Provider 0..1
  and Candidate 0..1
  and Coverage 0..1
* entry[FAISEnrollmentRequest].resource only FAISEnrollmentRequest
* entry[Organization].resource only Organization
* entry[Provider].resource only Practitioner or PractitionerRole
* entry[Candidate].resource only Patient
* entry[Coverage].resource only Coverage
