Profile: FAISClaim
Parent: Claim
Id: IHE.FAIS.Claim
Title: "FAIS Claim Profile"
Description: """
The FAIS Claim profile for submitting claims.
"""

* modifierExtension 0..0
* implicitRules 0..0

* use 1..1
* related.claim only Reference(FAISClaim)

Profile: FAISClaimBundle
Parent: Bundle
Id: IHE.FAIS.Claim.Bundle
Title: "FAIS Claim Bundle Profile"
Description: """
The FAIS Claim Bundle profile for a claim bundle to be POSTed to the [Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html) 
when referenced resources are included with the claim submission.
"""

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISClaim 1..*
* entry[FAISClaim].resource only FAISClaim
