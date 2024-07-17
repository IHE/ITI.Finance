Instance:   ex-beneficiary
InstanceOf: Patient
Title: "Example Patient Beneficiary"
Description:      "Example Beneficiary patient for enrollment and claims."
Usage: #example

* name
  * given = "Jane"
  * family = "Doe"
* gender = #female
* birthDate = "2000-05-04"

Instance:   ex-insurer
InstanceOf: Organization
Title:  "Example Insurer"
Description: "Example insurer organization."
Usage: #example

* name = "Example Public Insurance"

Instance:   ex-coverage
InstanceOf: Coverage
Title: "Example Coverage"
Description: "Example Coverage for the example beneficiary"
Usage: #example

* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#PUBLICPOL "public healthcare"
* policyHolder = Reference(ex-beneficiary)
* subscriber = Reference(ex-beneficiary)
* subscriberId = "a8978d4a-0c9f-11ef-9633-cb733e9641ef"
* beneficiary = Reference(ex-beneficiary)
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* period
  * start = "2024-01-01"
  * end = "2024-12-31"
* payor = Reference(ex-insurer)


Instance:   ex-enrollment-req
InstanceOf: FAISEnrollmentRequest
Title:    "Example Enrollment Request"
Description: "Example Enrollment Request"
Usage: #example

* status = #active
* created = "2023-12-15"
* insurer = Reference(ex-insurer)
* candidate = Reference(ex-beneficiary)
* coverage = Reference(ex-coverage)


Instance: ex-enreq-bundle
InstanceOf: FAISEnrollmentRequestBundle
Title: "Example Enrollment Request Bundle"
Description: "Example Bundle of enrollment request resources."
Usage: #example

* type = #collection
* entry[+]
  * fullUrl = Canonical(ex-enrollment-req)
  * resource = ex-enrollment-req
* entry[+]
  * fullUrl = Canonical(ex-insurer)
  * resource = ex-insurer
* entry[+]
  * fullUrl = Canonical(ex-beneficiary)
  * resource = ex-beneficiary
* entry[+]
  * fullUrl = Canonical(ex-coverage)
  * resource = ex-coverage

Instance: ex-enrollment-resp 
InstanceOf: FAISEnrollmentResponse
Title:  "Example Enrollment Response"
Description:  "Example Enrollment Response"
Usage: #example

* status = #active
* request = Reference(ex-enrollment-req)
* outcome = #complete
* disposition = "Enrolled"
* created = "2023-12-15"
* organization = Reference(ex-insurer)

Instance: ex-check-coverage
InstanceOf: FAISCoverageEligibilityRequest
Title: "Example Coverage Eligibility Request"
Description: "Example request to check coverage eligibility."
Usage: #example

* status = #active
* purpose = #validation
* patient = Reference(ex-beneficiary)
* created = "2024-05-04"
* insurer = Reference(ex-insurer)
* insurance[+]
  * focal = true
  * coverage = Reference(ex-coverage)

Instance: ex-covreq-bundle
InstanceOf: FAISCoverageEligibilityRequestBundle
Title: "Example Coverage Eligibility Request Bundle"
Description: "Example Bundle of coverage eligibility request resources."
Usage: #example

* type = #collection
* entry[+]
  * fullUrl = Canonical(ex-check-coverage)
  * resource = ex-check-coverage
* entry[+]
  * fullUrl = Canonical(ex-beneficiary)
  * resource = ex-beneficiary
* entry[+]
  * fullUrl = Canonical(ex-insurer)
  * resource = ex-insurer
* entry[+]
  * fullUrl = Canonical(ex-coverage)
  * resource = ex-coverage

Instance: ex-check-coverage-resp
InstanceOf: FAISCoverageEligibilityResponse
Title: "Example Coverage Eligibility Response"
Description: "Example Coverage Eligibility Response"
Usage: #example

* status = #active
* purpose = #validation
* patient = Reference(ex-beneficiary)
* created = "2024-05-04"
* request = Reference(ex-check-coverage)
* outcome = #complete
* disposition = "Allowed"
* insurer = Reference(ex-insurer)
* insurance[+]
  * coverage = Reference(ex-coverage)
  * inforce = true