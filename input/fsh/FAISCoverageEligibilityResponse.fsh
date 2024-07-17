Profile: FAISCoverageEligibilityResponse
Parent: CoverageEligibilityResponse
Id: IHE.FAIS.CoverageEligibilityResponse
Title: "FAIS CoverageEligibilityResponse Profile"
Description: """
The FAIS CoverageEligibilityResponse profile to be used as the response to the 
[FAIS CoverageEligibilityRequest $submit](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html)
"""

* modifierExtension 0..0
* implicitRules 0..0

* status 1..1
* request 1..1
* request only Reference(FAISCoverageEligibilityRequest)
* outcome 1..1

Profile: FAISCEResponseBundle
Parent: Bundle
Id: IHE.FAIS.CEResponse.Bundle
Title: "FAIS CoverageEligibilityResponse Bundle Profile"
Description: """
The FAIS CoverageEligibilityResponse Bundle profile for a coverage eligiblity
response bundle to be returned from the 
[FAIS CoverageEligibilityRequest $submit](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html)
when referenced resources are included with the coverage eligibility response.
"""

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISCoverageEligibilityResponse 1..1
* entry[FAISCoverageEligibilityResponse].resource only FAISCoverageEligibilityResponse