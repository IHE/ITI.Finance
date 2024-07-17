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
