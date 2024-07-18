Profile: FAISCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Id: IHE.FAIS.CoverageEligibilityRequest
Title: "FAIS CoverageEligibilityRequest Profile"
Description: """
The FAIS CoverageEligibilityRequest profile for submitting coverage eligibility requests.
"""

* modifierExtension 0..0
* implicitRules 0..0

Profile: FAISCoverageEligibilityRequestBundle
Parent: Bundle
Id: IHE.FAIS.CoverageEligibilityRequest.Bundle
Title: "FAIS CoverageEligibilityRequest Bundle Profile"
Description: """
The FAIS CoverageEligibilityRequest Bundle profile for a coverage eligiblity request bundle to be POSTed to the 
[CoverageEligibilityRequest $submit operation](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html) 
when referenced resources are included with the coverage eligibility submission.
"""

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISCoverageEligibilityRequest 1..1
  and Organization 0..*
  and Practitioner 0..*
  and PractitionerRole 0..*
  and Patient 0..1
  and Coverage 0..*
  and Location 0..*
* entry[FAISCoverageEligibilityRequest].resource only FAISCoverageEligibilityRequest
* entry[Organization].resource only Organization
* entry[Practitioner].resource only Practitioner
* entry[PractitionerRole].resource only PractitionerRole
* entry[Patient].resource only Patient
* entry[Coverage].resource only Coverage
* entry[Location].resource only Location
