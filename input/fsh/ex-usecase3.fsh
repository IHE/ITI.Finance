Instance:   ex-claim-3
InstanceOf: FAISClaim
Title:      "Use Case 3 - Example claim"
Description: """
Example claim for use case 3.

The Claims Requestor can submit this or a claim bundle to the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
on the Claims Manager.
"""

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #claim
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

Instance: ex-claim-bundle-3
InstanceOf: FAISClaimBundle
Title:      "Use Case 3 - Example claim bundle"
Description: """
Example claim bundle for use case 3.

The Claims Requestor can submit this bundle to the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
on the Claims Manager.
"""

* type = #collection
* entry[+]
  * fullUrl = Canonical(ex-claim-3)
  * resource = ex-claim-3
* entry[+]
  * fullUrl = Canonical(ex-beneficiary-1)
  * resource = ex-beneficiary-1
* entry[+]
  * fullUrl = Canonical(ex-doctor-2)
  * resource = ex-doctor-2
* entry[+]
  * fullUrl = Canonical(ex-insurer-1)
  * resource = ex-insurer-1
* entry[+]
  * fullUrl = Canonical(ex-network-1)
  * resource = ex-network-1
* entry[+]
  * fullUrl = Canonical(ex-hospital-2)
  * resource = ex-hospital-2
* entry[+]
  * fullUrl = Canonical(ex-coverage-1)
  * resource = ex-coverage-1

Instance: ex-claim-response-acc-3
InstanceOf: FAISClaimResponse
Title:      "Use Case 3 - Example accepted claim response"
Description: """
Example accepted claim response for use case 3.

The Claims Manager can return this or a claim response bundle from the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
to the Claims Requestor.
"""

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* request = Reference(ex-claim-3)
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

Instance: ex-claim-response-acc-bundle-3
InstanceOf: FAISClaimResponseBundle
Title:      "Use Case 3 - Example accepted claim response bundle"
Description: """
Example accepted claim response bundle for use case 3.

The Claims Manager can return this bundle from the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
to the Claims Requestor.
"""

* type = #collection
* entry[+]
  * fullUrl = Canonical(ex-claim-response-acc-3)
  * resource = ex-claim-response-acc-3
* entry[+]
  * fullUrl = Canonical(ex-beneficiary-1)
  * resource = ex-beneficiary-1
* entry[+]
  * fullUrl = Canonical(ex-claim-3)
  * resource = ex-claim-3
* entry[+]
  * fullUrl = Canonical(ex-insurer-1)
  * resource = ex-insurer-1
* entry[+]
  * fullUrl = Canonical(ex-coverage-1)
  * resource = ex-coverage-1

Instance: ex-claim-response-den-3
InstanceOf: FAISClaimResponse
Title:      "Use Case 3 - Example denied claim response"
Description: """
Example denied claim response for use case 3.

The Claims Manager can return this or a claim response bundle from the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
to the Claims Requestor.
"""

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* request = Reference(ex-claim-3)
* use = #claim
* patient = Reference(ex-beneficiary-1)
* created = "2024-07-16T03:00:00Z"
* insurer = Reference(ex-insurer-1)
* outcome = #complete
* disposition = "Denied"
* insurance[+]
  * sequence = 1
  * focal = true
  * coverage = Reference(ex-coverage-1)

Instance: ex-claim-response-queue-3
InstanceOf: FAISClaimResponse
Title:      "Use Case 3 - Example queued claim response"
Description: """
Example queued claim response for use case 3.

The Claims Manager can return this or a claim response bundle from the
[Claim $submit operation](OperationDefinition-IHE.FAIS.Claim.Submit.html)
to the Claims Requestor.
"""

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* request = Reference(ex-claim-3)
* use = #claim
* patient = Reference(ex-beneficiary-1)
* created = "2024-07-16T03:00:00Z"
* insurer = Reference(ex-insurer-1)
* outcome = #queued
* disposition = "Queued"
* insurance[+]
  * sequence = 1
  * focal = true
  * coverage = Reference(ex-coverage-1)

Instance:   ex-claim-cancelled-3
InstanceOf: FAISClaim
Title:      "Use Case 3 - Example cancelled claim"
Description: """
Example cancelled claim for use case 3.

The Claims Manager received a cancellation from the Claims Requestor at 
[Claim $cancel operation](OperationDefinition-IHE.FAIS.Claim.Cancel.html)
and updated the Claim to be cancelled
"""

* status = #cancelled
* extension[statusReason].valueCodeableConcept.text = "Service not completed."
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #claim
* patient = Reference(ex-beneficiary-1)
* created = "2024-07-16T03:00:00Z"
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