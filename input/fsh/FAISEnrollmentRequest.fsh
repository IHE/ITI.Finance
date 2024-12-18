Profile: FAISEnrollmentRequest
Parent: EnrollmentRequest
Id: IHE.FAIS.EnrollmentRequest
Title: "FAIS EnrollmentRequest Profile"
Description: """
The FAIS EnrollmentRequest profile for submitting enrollment requests.
"""

* modifierExtension 0..0
* implicitRules 0..0

* extension contains StatusReason named statusReason 0..1

* insurer 1..1
* candidate 1..1
* coverage 1..1

Profile: FAISEnrollmentRequestBundle
Parent: Bundle
Id: IHE.FAIS.EnrollmentRequest.Bundle
Title: "FAIS EnrollmentRequest Bundle Profile"
Description: """
The FAIS EnrollmentRequest Bundle profile for an enrollment request bundle to be POSTed to the 
[EnrollmentRequest $submit operation](OperationDefinition-IHE.FAIS.EnrollmentRequest.Submit.html) 
when referenced resources are included with the enrollment submission.
"""

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISEnrollmentRequest 1..1
  and Organization 0..*
  and Provider 0..1
  and ProviderRole 0..1
  and Candidate 0..1
  and Coverage 0..1
* entry[FAISEnrollmentRequest].resource only FAISEnrollmentRequest
* entry[Organization].resource only Organization
* entry[Provider].resource only Practitioner
* entry[ProviderRole].resource only PractitionerRole
* entry[Candidate].resource only Patient
* entry[Coverage].resource only Coverage
