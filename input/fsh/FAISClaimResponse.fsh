Profile: FAISClaimResponse
Parent: ClaimResponse
Id: IHE.FAIS.ClaimResponse
Title: "FAIS ClaimResponse Profile"
Description: """
The FAIS ClaimResponse profile to be used as the response to the 
[FAIS Claim $submit](OperationDefinition-IHE.FAIS.Claim.Submit.html)
"""


* modifierExtension 0..0
* implicitRules 0..0

* status 1..1
* request 1..1
* request only Reference(FAISClaim)
* outcome 1..1

Profile: FAISClaimResponseBundle
Parent: Bundle
Id: IHE.FAIS.ClaimResponse.Bundle
Title: "FAIS ClaimResponse Bundle Profile"
Description: """
The FAIS ClaimResponse Bundle profile for a claim response bundle to be returned from the claim operations:
* [FAIS Claim $submit](OperationDefinition-IHE.FAIS.Claim.Submit.html)
* [FAIS Claim $cancel](OperationDefinition-IHE.FAIS.Claim.Cancel.html)
* [FAIS Claim $reprocess](OperationDefinition-IHE.FAIS.Claim.Reprocess.html)
when referenced resources are included with the claim response.
"""

* implicitRules 0..0

* type = #collection
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  FAISClaimResponse 1..1
* entry[FAISClaimResponse].resource only FAISClaimResponse