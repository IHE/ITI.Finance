Instance: ex-doctor-2
InstanceOf: Practitioner
Title: "Use Case 2 - Example Doctor"
Description: """
Example Doctor for use case 2.
"""

* name[+]
  * given = "Kalu"
  * family = "Kalu"

Instance: ex-hospital-2
InstanceOf: Location
Title: "Use Case 2 - Local Hospital"
Description: """
Example local hospital for use case 2.
"""

* name = "Local Hospital"

Instance: ex-check-coverage-2
InstanceOf: FAISCoverageEligibilityRequest
Title: "Use Case 2 - Example Coverage Eligibility Request"
Description: """
Example request to check coverage eligibility.

The Coverage Requestor may submit this or a
[bundle](Bundle-ex-check-coverage-bundle-2.html) to the
[CoverageEligibilityRequest $submit operation](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html)
on the Claims Manager.
"""

* status = #active
* purpose = #benefits
* patient = Reference(ex-beneficiary-1)
* created = "2024-06-01T15:00:00Z"
* servicedPeriod
  * start = "2024-07-01"
  * end = "2024-12-31"
* provider = Reference(ex-doctor-2)
* enterer = Reference(ex-doctor-2)
* insurer = Reference(ex-insurer-1)
* facility = Reference(ex-hospital-2)
* item[+]
  * category = http://terminology.hl7.org/CodeSystem/ex-benefitcategory#1
  * productOrService = http://loinc.org#21946-9 "Chemotherapy treatment Cancer"
  * provider = Reference(ex-doctor-2)
  * facility = Reference(ex-hospital-2)
  * diagnosis.diagnosisCodeableConcept = http://id.who.int/icd/release/11/mms#XH1VB1 "Hybrid oncocytic chromophobe tumour"

Instance: ex-check-coverage-bundle-2
InstanceOf: FAISCoverageEligibilityRequestBundle
Title: "Use Case 2 - Example Coverage Eligibility Request Bundle"
Description: """
Example Bundle of coverage eligibility request resources for use case 2.

The Coverage Requestor can submit this bundle to the
[CoverageEligibilitiyRequest $submit operation](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html)
on the Claims Manager.
"""
Usage: #example

* type = #collection
* entry[FAISCoverageEligibilityRequest]
  * fullUrl = Canonical(ex-check-coverage-2)
  * resource = ex-check-coverage-2
* entry[Practitioner]
  * fullUrl = Canonical(ex-doctor-2)
  * resource = ex-doctor-2
* entry[Organization]
  * fullUrl = Canonical(ex-insurer-1)
  * resource = ex-insurer-1
* entry[Patient]
  * fullUrl = Canonical(ex-beneficiary-1)
  * resource = ex-beneficiary-1
* entry[Location]
  * fullUrl = Canonical(ex-hospital-2)
  * resource = ex-hospital-2

Instance: ex-check-coverage-resp-2
InstanceOf: FAISCoverageEligibilityResponse
Title: "Use Case 2 - Example Coverage Eligibility Response"
Description: """
Example Coverage Eligibility Response for use case 2.

The Claims Manager may return this or a
[bundle](Bundle-ex-check-coverage-resp-bundle-2.html) from the
[CoverageEligibilityRequest $submit operation](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html)
to the Beneficiary Requestor.
"""

* status = #active
* purpose = #benefits
* patient = Reference(ex-beneficiary-1)
* created = "2024-06-01T15:01:00Z"
* request = Reference(ex-check-coverage-2)
* outcome = #complete
* disposition = "Allowed"
* insurer = Reference(ex-insurer-1)
* insurance[+]
  * coverage = Reference(ex-coverage-1)
  * inforce = true


Instance: ex-check-coverage-resp-bundle-2
InstanceOf: FAISCEResponseBundle
Title: "Use Case 2 - Example Coverage Eligibility Response Bundle"
Description: """
Example Bundle of coverage eligibility response resources for use case 2.

The Claims Manager may return this from the
[CoverageEligibilityRequest $submit operation](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html)
to the Beneficiary Requestor.
"""
Usage: #example

* type = #collection
* entry[+]
  * fullUrl = Canonical(ex-check-coverage-resp-2)
  * resource = ex-check-coverage-resp-2
* entry[+]
  * fullUrl = Canonical(ex-insurer-1)
  * resource = ex-insurer-1
* entry[+]
  * fullUrl = Canonical(ex-beneficiary-1)
  * resource = ex-beneficiary-1
* entry[+]
  * fullUrl = Canonical(ex-coverage-1)
  * resource = ex-coverage-1