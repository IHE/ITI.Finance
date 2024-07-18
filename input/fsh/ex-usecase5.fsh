Instance:   ex-preauthorization-5
InstanceOf: FAISClaim
Title:      "Use Case 5 - Example pre-authorization claim"
Description: """
Example pre-authorization claim for use case 5.

The Claims Requestor can submit this or a claim bundle to the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
on the Claims Manager.
"""

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #preauthorization
* patient = Reference(ex-beneficiary-1)
* created = "2024-07-15T03:00:00Z"
* enterer = Reference(ex-doctor-2)
* insurer = Reference(ex-insurer-1)
* provider = Reference(ex-doctor-2)
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal
* payee[+]
  * type = http://terminology.hl7.org/CodeSystem/payeetype#provider
  * party = Reference(ex-network-1)
* facility = Reference(ex-hospital-2)
* diagnosis[+]
  * sequence = 1
  * diagnosisCodeableConcept = http://id.who.int/icd/release/11/mms#XH1VB1 "Hybrid oncocytic chromophobe tumour"
* procedure[+]
  * sequence = 1
  * procedureCodeableConcept = http://loinc.org#21946-9 "Chemotherapy treatment Cancer"
* insurance[+]
  * sequence = 1
  * focal = true
  * coverage = Reference(ex-coverage-1)

Instance: ex-preauthorization-response-5
InstanceOf: FAISClaimResponse
Title:      "Use Case 5 - Example accepted pre-determination response"
Description: """
Example accepted pre-determination response for use case 5.

The Claims Manager can return this or a claim response bundle from the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
to the Claims Requestor.
"""

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* request = Reference(ex-preauthorization-5)
* use = #claim
* patient = Reference(ex-beneficiary-1)
* created = "2024-07-16T03:00:00Z"
* insurer = Reference(ex-insurer-1)
* outcome = #complete
* disposition = "Accepted"
* insurance[+]
  * sequence = 1
  * focal = true
  * coverage = Reference(ex-coverage-1)
