Profile: FAISEnrollmentResponse
Parent: EnrollmentResponse
Id: IHE.FAIS.EnrollmentResponse
Title: "FAIS EnrollmentResponse Profile"
Description: """
The FAIS EnrollmentResponse profile to be used as the response to the 
[FAIS EnrollmentRequest $submit](OperationDefinition-IHE.FAIS.EnrollmentRequest.Submit.html)
"""

* modifierExtension 0..0
* implicitRules 0..0

* status 1..1
* request 1..1
* request only Reference(FAISEnrollmentRequest)
* outcome 1..1


Profile: FAISEnrollmentResponseBundle
Parent: Bundle
Id: IHE.FAIS.EnrollmentResponse.Bundle
Title: "FAIS EnrollmentResponse Bundle Profile"
Description: """
The FAIS EnrollmentResponse Bundle profile for a enrollment
response bundle to be returned from the 
[FAIS EnrollmentRequest $submit](OperationDefinition-IHE.FAIS.EnrollmentRequest.Submit.html)
when referenced resources are included with the enrollment response.
"""

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISEnrollmentResponse 1..1
* entry[FAISEnrollmentResponse].resource only FAISEnrollmentResponse