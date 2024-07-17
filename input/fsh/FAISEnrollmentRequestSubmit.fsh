Instance: FAISEnrollmentRequestSubmit
InstanceOf: OperationDefinition
Title: "FAIS Enrollment Request $submit"
Description: """
The FAIS Enrollment Request $submit operation to be used when the EnrollmentRequest is being submitted.

This is called from the Beneficiary Requestor to the Beneficiary Manager.
"""
Usage: #definition 

* id = "IHE.FAIS.EnrollmentRequest.Submit"
* name = "FAIS_EnrollmentRequest_Submit"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #EnrollmentRequest
* system = false
* type = true
* instance = false
* code = #submit
* inputProfile = Canonical(FAISERSubmitIn)
* outputProfile = Canonical(FAISERSubmitOut)
* parameter[+]
  * name = #resource
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "An EnrollmentRequest resource or a Bundle with an EnrollmentRequest and any referenced resources."
  * type = #Resource
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "An EnrollmentResponse resource or an OperationOutcome if there was an error."
  * type = #Resource

Profile: FAISERSubmitIn
Parent: Parameters
Id: IHE.FAIS.ER.Submit.Parameters.In 
Title: "FAIS Enrollment Request Submit Input Parameters Profile"
Description: """
The FAIS Enrollment Request Submit Input parameters for the 
[FAIS EnrollmentRequest $submit](OperationDefinition.IHE.FAIS.EnrollmentRequest.Submit.html) operation.
"""

* implicitRules 0..0
* parameter 1..1
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter ^slicing.ordered = false

* parameter contains resource 1..1
* parameter[resource]
  * name = "resource"
  * value[x] 0..0
  * resource 1..1
  * resource only FAISEnrollmentRequest or FAISEnrollmentRequestBundle
  * part 0..0

Profile: FAISERSubmitOut
Parent: Parameters
Id: IHE.FAIS.ER.Submit.Parameters.Out
Title: "FAIS Enrollment Request Submit Output Parameters Profile"
Description: """
The FAIS Enrollment Request Submit Output parameters for the 
[FAIS EnrollmentRequest $submit](OperationDefinition.IHE.FAIS.EnrollmentRequest.Submit.html) operation.
"""

* implicitRules 0..0

* parameter 1..1
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter ^slicing.ordered = false

* parameter contains out 1..1
* parameter[out]
  * name = "out"
  * value[x] 0..0
  * resource 1..1
  * resource only FAISEnrollmentResponse or OperationOutcome
  * part 0..0