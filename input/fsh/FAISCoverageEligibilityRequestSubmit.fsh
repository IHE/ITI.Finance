Instance: FAISCoverageEligibilityRequestSubmit
InstanceOf: OperationDefinition
Title: "FAIS Enrollment Request $submit"
Usage: #definition 

* id = "IHE.FAIS.CoverageEligibilityRequest.Submit"
* base = "http://hl7.org/fhir/OperationDefinition/CoverageEligibilityRequest-submit"
* name = "FAIS_CoverageEligibilityRequest_Submit"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #CoverageEligibilityRequest
* system = false
* type = true
* instance = false
* code = #submit
* parameter[+]
  * name = #resource
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "An CoverageEligibilityRequest resource or a Bundle with an CoverageEligibilityRequest and any referenced resources."
  * type = #Resource
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "An EnrollmentResponse resource or an OperationOutcome if ther ewas an error."
  * type = #Resource