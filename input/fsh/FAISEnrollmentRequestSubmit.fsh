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
* parameter[+]
  * name = #resource
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "An EnrollmentRequest resource or a Bundle with an EnrollmentRequest and any referenced resources."
  * type = #Resource
  * targetProfile[+] = Canonical(FAISEnrollmentRequest)
  * targetProfile[+] = Canonical(FAISEnrollmentRequestBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "An EnrollmentResponse resource or a Bundle with an EnrollmentResponse and referenced resources or an OperationOutcome if there was an error."
  * type = #Resource
  * targetProfile[+] = Canonical(FAISEnrollmentResponse)
  * targetProfile[+] = Canonical(FAISEnrollmentResponseBundle)