Instance: FAISClaimSubmit
InstanceOf: OperationDefinition
Title: "FAIS Claim $submit"
Description: """
The FAIS Claim $submit operation to be used when the Claim is being submitted.

This is called from the Claims Requestor to the Claims Manager.
"""
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
* inputProfile = Canonical(FAISClaimSubmitIn)
* outputProfile = Canonical(FAISClaimSubmitOut)
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

Profile: FAISClaimSubmitIn
Parent: Parameters
Id: IHE.FAIS.Claim.Submit.Parameters.In 
Title: "FAIS Claim Submit Input Parameters Profile"
Description: """
The FAIS Claim Submit Input parameters for the [FAIS Claim $submit](OperationDefinition.IHE.FAIS.Claim.Submit.html) operation.
"""

* implicitRules 0..0
* parameter 1..1
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter ^slicing.ordered = false

* parameter contains resource 1..1
* parameter[resource]
  * name = "resource"
  * value[x] 0..0
  * resource 1..1
  * resource only FAISClaim or FAISClaimBundle
  * part 0..0

Profile: FAISClaimSubmitOut
Parent: Parameters
Id: IHE.FAIS.Claim.Submit.Parameters.Out
Title: "FAIS Claim Submit Output Parameters Profile"
Description: """
The FAIS Claim Submit Output parameters for the FAIS Claim operations:
* [FAIS Claim $submit](OperationDefinition.IHE.FAIS.Claim.Submit.html)
* [FAIS Claim $cancel](OperationDefinition.IHE.FAIS.Claim.Cancel.html)
* [FAIS Claim $reprocess](OperationDefinition.IHE.FAIS.Claim.Reprocess.html)
"""

* implicitRules 0..0

* parameter 1..1
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter ^slicing.ordered = false

* parameter contains out 1..1
* parameter[out]
  * name = "out"
  * value[x] 0..0
  * resource 1..1
  * resource only FAISClaimResponse or OperationOutcome
  * part 0..0