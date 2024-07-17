Instance:   ex-beneficiary-1
InstanceOf: Patient
Title: "Example Patient Beneficiary - Use Case 1"
Description:      "Example Beneficiary patient for enrollment for use case 1."
Usage: #example

* name
  * given = "Purity"
  * family = "Atieno"
* gender = #female
* birthDate = "2000-05-04"

Instance: ex-insurer-1
InstanceOf: Organization
Title: "Example Insurer: National Health Insurance Scheme - Use Case 1"
Description: "Example insurer organization for use case 1."
Usage: #example

* name = "National Health Insurance Scheme"

Instance: ex-network-1
InstanceOf: Organization
Title: "Example Network: National Health Hospital System - Use Case 1"
Description: "Example healthcare organization for use case 1."
Usage: #example

* name = "National Health Hospital System"

Instance:   ex-insuranceplan-1
InstanceOf: FAISInsurancePlan
Title:      "Example Insurance Plan - Use Case 1"
Description:  "Example Insurance Plan for enrollment for use case 1"
Usage: #example

* status = #active
* type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#medical
* name = "National Health Insurance Scheme"
* ownedBy = Reference(ex-insurer-1)
* administeredBy = Reference(ex-insurer-1)
* coverage[+]
  * type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#medical
  * benefit[+]
    * type = http://terminology.hl7.org/CodeSystem/insurance-plan-type#medical
* plan[+]
  * network = Reference(ex-network-1)

Instance:   ex-coverage-1
InstanceOf: Coverage
Title: "Example Coverage - Use Case 1"
Description: """
Example Coverage for use case 1

The Beneficiary Manager will create the Coverage resource for the Beneficiary
based on the InsurancePlan and send it as part of the 
[enrollment request bundle](Bundle-ex-enreq-bundle-1.html).
"""
Usage: #example

* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#PUBLICPOL "public healthcare"
* policyHolder = Reference(ex-beneficiary-1)
* subscriber = Reference(ex-beneficiary-1)
* subscriberId = "05710b56-4448-11ef-b676-774a043da147"
* beneficiary = Reference(ex-beneficiary-1)
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* period
  * start = "2024-01-01"
  * end = "2024-12-31"
* payor = Reference(ex-insurer-1)

Instance:   ex-enrollment-req-1
InstanceOf: FAISEnrollmentRequest
Title:    "Example Enrollment Request - Use Case 1"
Description: """
Example Enrollment Request for use case 1.

The Benficiary Manager will create the EnrollmentRequest to send to the Beneficiary Manager.
"""
Usage: #example

* status = #active
* created = "2023-12-15"
* insurer = Reference(ex-insurer-1)
* candidate = Reference(ex-beneficiary-1)
* coverage = Reference(ex-coverage-1)

Instance: ex-enreq-bundle-1
InstanceOf: FAISEnrollmentRequestBundle
Title: "Example Enrollment Request Bundle - Use Case 1"
Description: "Example Bundle of enrollment request resources for use case 1."
Usage: #example

* type = #collection
* entry[+]
  * fullUrl = Canonical(ex-enrollment-req-1)
  * resource = ex-enrollment-req-1
* entry[+]
  * fullUrl = Canonical(ex-insurer-1)
  * resource = ex-insurer-1
* entry[+]
  * fullUrl = Canonical(ex-beneficiary-1)
  * resource = ex-beneficiary-1
* entry[+]
  * fullUrl = Canonical(ex-coverage-1)
  * resource = ex-coverage-1

Instance: ex-enrollment-resp-1
InstanceOf: FAISEnrollmentResponse
Title:  "Example Enrollment Response - Use Case 1"
Description:  """
Example Enrollment Response for use case 1.

The Beneficiary Manager responds with the EnrollmentResponse.
"""
Usage: #example

* identifier[+]
  * system = "http://example.org/FAIS/NHIS"
  * value = "3bb58542-4449-11ef-8d48-d7b1b51e3816"
* status = #active
* request = Reference(ex-enrollment-req-1)
* outcome = #complete
* disposition = "Enrolled"
* created = "2023-12-15"
* organization = Reference(ex-insurer-1)

Instance: ex-enrollment-submit-in-1
InstanceOf: FAISERSubmitIn
Title: "Example Enrollment Request Submit Input Parameters - Use Case 1"
Description: """
Example enrollment request submission input parameters for use case 1.

This is for submission to the [EnrollmentRequest $submit operation](OperationDefinition-IHE.FAIS.EnrollmentRequest.Submit.html),
although the operation will accept receiving the EnrollmentRequest Bundle directly instead of as part of a Parameters resource
since there is only one input parameter of type resource.
"""
Usage: #example

* parameter[resource]
  * name = "resource"
  * resource = ex-enreq-bundle-1

Instance: ex-enrollment-submit-out-1
InstanceOf: FAISERSubmitOut
Title: "Example Enrollment Request Submit Output Parameters - Use Case 1"
Description: """
Example enrollment request submission output parameters for use case 1.

This is for the output from the [EnrollmentRequest $submit operation](OperationDefinition-IHE.FAIS.EnrollmentRequest.Submit.html),
although the operation will return the EnrollmentResponse directly instead of as part of a Parameters resource
since there is only one output parameter of type resource.
"""
Usage: #example

* parameter[out]
  * name = "out"
  * resource = ex-enrollment-resp-1