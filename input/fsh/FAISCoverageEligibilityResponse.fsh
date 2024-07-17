Profile: FAISCoverageEligibilityResponse
Parent: CoverageEligibilityResponse
Id: IHE.FAIS.CoverageEligibilityResponse
Title: "FAIS CoverageEligibilityResponse Profile"
Description: """
The FAIS CoverageEligibilityResponse profile to be used as the response to the 
[FAIS CoverageEligibilityRequest $submit](OperationDefinition.IHE.FAIS.CoverageEligibilityRequest.Submit.html)
"""

* modifierExtension 0..0
* implicitRules 0..0

* status 1..1
* request 1..1
* request only Reference(FAISCoverageEligibilityRequest)
* outcome 1..1
