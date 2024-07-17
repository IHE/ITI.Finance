Instance: FAISClaimCancel
InstanceOf: OperationDefinition
Title: "FAIS Claim $cancel"
Description: """
The FAIS Claim $cancel operation to be used on a Claim instance when the Claim should be cancelled.

This is called from the Claims Requestor to the Claims Manager.
"""
Usage: #definition 

* id = "IHE.FAIS.Claim.Cancel"
* name = "FAIS_Claim_Cancel"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Claim
* system = false
* type = false
* instance = true
* code = #cancel
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "A ClaimResponse resource, a Bundle with a ClaimResponse and any referenced resources, or an OperationOutcome if there was an error."
  * type = #Resource
  * targetProfile[+] = Canonical(FAISClaimResponse)
  * targetProfile[+] = Canonical(FAISClaimResponseBundle)