Profile: FAISCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Id: IHE.FAIS.CoverageEligibilityRequest
Title: "FAIS CoverageEligibilityRequest Profile"

* modifierExtension 0..0
* implicitRules 0..0

Profile: FAISCoverageEligibilityRequestBundle
Parent: Bundle
Id: IHE.FAIS.CoverageEligibilityRequest.Bundle
Title: "FAIS CoverageEligibilityRequest Bundle Profile"

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISCoverageEligibilityRequest 1..1
  and Organization 0..1
  and Provider 0..1
  and Patient 0..1
  and Coverage 0..1
* entry[FAISCoverageEligibilityRequest].resource only FAISCoverageEligibilityRequest
* entry[Organization].resource only Organization
* entry[Provider].resource only Practitioner or PractitionerRole
* entry[Patient].resource only Patient
* entry[Coverage].resource only Coverage
