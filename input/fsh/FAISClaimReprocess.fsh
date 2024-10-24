Instance: FAISClaimReprocess
InstanceOf: OperationDefinition
Title: "FAIS Claim $reprocess"
Description: """
The FAIS Claim $reprocess operation to be used on a Claim instance when the Claim should be re-processed.

This is called from the Claims Requestor to the Claims Manager.
"""
Usage: #definition 

* id = "IHE.FAIS.Claim.Reprocess"
* name = "FAIS_Claim_Reprocess"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Claim
* system = false
* type = false
* instance = true
* code = #reprocess
* parameter[+]
  * name = #resource
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "A Claim resource or a Bundle with a Claim and any referenced resources."
  * type = #Resource
  * targetProfile[+] = Canonical(FAISClaim)
  * targetProfile[+] = Canonical(FAISClaimBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "A ClaimResponse resource, a Bundle with a ClaimResponse and any referenced resources, or an OperationOutcome if there was an error."
  * type = #Resource
  * targetProfile[+] = Canonical(FAISClaimResponse)
  * targetProfile[+] = Canonical(FAISClaimResponseBundle)