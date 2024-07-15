Instance: FAISEnrollmentRequestSubmit
InstanceOf: OperationDefinition
Title: "FAIS Enrollment Request $submit"
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
  * documentation = "An EnrollmentResponse resource or an OperationOutcome if ther ewas an error."
  * type = #Resource