Instance: FAISCoverageEligibilityRequestSubmit
InstanceOf: OperationDefinition
Title: "FAIS Coverage Eligibility Request $submit"
Description: """
The FAIS Coverage Eligibility Request $submit operation to be used when the CoverageEligibilityRequest is being submitted.

This is called from the Coverage Requestor to the Claims Manager.
"""
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
* inputProfile = Canonical(FAISCERSubmitIn)
* outputProfile = Canonical(FAISCERSubmitOut)
* parameter[+]
  * name = #resource
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "A CoverageEligibilityRequest resource or a Bundle with a CoverageEligibilityRequest and any referenced resources."
  * type = #Resource
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "A CoverageEligibilityResponse resource or an OperationOutcome if there was an error."
  * type = #Resource

Profile: FAISCERSubmitIn
Parent: Parameters
Id: IHE.FAIS.CER.Submit.Parameters.In 
Title: "FAIS Coverage Eligibility Request Submit Input Parameters Profile"
Description: """
The FAIS Coverage Eligibility Request Submit Input parameters for the 
[FAIS CoverageEligibilityRequest $submit](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html) operation.
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
  * resource only FAISCoverageEligibilityRequest or FAISCoverageEligibilityRequestBundle
  * part 0..0

Profile: FAISCERSubmitOut
Parent: Parameters
Id: IHE.FAIS.CER.Submit.Parameters.Out
Title: "FAIS Coverage Eligiblity Request Submit Output Parameters Profile"
Description: """
The FAIS Coverage Eligibility Request Submit Output parameters for the 
[FAIS CoverageEligibilityRequest $submit](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html) operation.
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
  * resource only FAISCoverageEligibilityResponse or OperationOutcome
  * part 0..0
