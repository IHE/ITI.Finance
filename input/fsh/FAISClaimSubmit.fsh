Instance: FAISClaimSubmit
InstanceOf: OperationDefinition
Title: "FAIS Claim $submit"
Usage: #definition 

* id = "IHE.FAIS.Claim.Submit"
* base = "http://hl7.org/fhir/OperationDefinition/Claim-submit"
* name = "FAIS_Claim_Submit"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Claim
* system = false
* type = true
* instance = false
* code = #submit
* parameter[+]
  * name = #resource
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "A Claim resource or a Bundle with a Claim and any referenced resources."
  * type = #Resource
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "A ClaimResponse resource, a Bundle with a ClaimResponse and any referenced resources, or an OperationOutcome if there was an error."
  * type = #Resource