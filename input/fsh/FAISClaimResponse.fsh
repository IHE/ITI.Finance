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
