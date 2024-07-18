Instance: IHE.FAIS.BeneficiaryRequestor
InstanceOf: CapabilityStatement
Title: "Beneficiary Requestor Actor"
Usage: #definition
* description = """
CapabilityStatement for [Beneficiary Requestor Actor](volume-1.html#beneficiary-requestor).

The Beneficiary Requestor can enroll beneficiaries and optionally query insurance plans from a Beneficiary Manager.
"""
* url = "https://profiles.ihe.net/IHE/FAIS/CapabilityStatement/IHE.FAIS.BeneficiaryRequestor"
* name = "IHE_FAIS_BeneficiaryRequestor"
* title = "IHE FAIS Beneficiary Requestor"
* status = #active
* experimental = false
* date = "2024-07-17"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "FAIS Beneficiary Requestor provides capability to query insurance plans, submit enrollment requests, and query for enrollment responses."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #InsurancePlan
    * supportedProfile[+] = Canonical(FAISInsurancePlan)
    * documentation = """
FAIS Query Insurance Plan transaction [[ITI-YY2]](ITI-YY2.html)
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The status of the Insurance Plan"
    * searchParam[+]
      * name = "type"
      * type = #token
      * documentation = "The type of the Insurance Plan"
    * searchParam[+]
      * name = "name"
      * type = #string
      * documentation = "The name of the Insurance Plan"
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * documentation = "The business identifiers of the Insurance Plan"     
    * searchParam[+]
      * name = "administered-by"
      * type = #reference
      * documentation = "Who administers the Insurance Plan" 
    * searchParam[+]
      * name = "owned-by"
      * type = #reference
      * documentation = "Who owns the Insurance Plan"
  * resource[+]
    * type = #EnrollmentRequest
    * supportedProfile[+] = Canonical(FAISEnrollmentRequest)
    * documentation = """
FAIS Enroll Beneficiary transaction [[ITI-YY1]](ITI-YY1.html)
"""
    * operation[+]
      * name = "submit"
      * definition = Canonical(FAISEnrollmentRequestSubmit)
      * documentation = "Submits an enrollment request to enroll a new beneficiary with the request coverage.  FAIS Enroll Beneficiary transaction [[ITI-YY1]](ITI-YY1.html)"
  * resource[+]
    * type = #EnrollmentResponse
    * supportedProfile[+] = Canonical(FAISEnrollmentResponse)
    * documentation = """
FAIS Check Enrollment Status transaction [[ITI-YY3]](ITI-YY3.html)
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * name = "request"
      * type = #reference
      * documentation = "The enrollment request" 
  * interaction.code = #search-system

Instance: IHE.FAIS.BeneficiaryManager
InstanceOf: CapabilityStatement
Title: "Beneficiary Manager Actor"
Usage: #definition
* description = """
CapabilityStatement for [Beneficiary Manager Actor](volume-1.html#beneficiary-manager).

The Beneficiary Manager processes requests from the Beneficiary Requestor actor. It follows internal business processes to enroll beneficiaries from the Beneficiary Requestor that are beyond the scope of this profile and will return the result of the enrollment. It also responds to queries about insurance plans.
"""
* url = "https://profiles.ihe.net/IHE/FAIS/CapabilityStatement/IHE.FAIS.BeneficiaryManager"
* name = "IHE_FAIS_BeneficiaryManager"
* title = "IHE FAIS Beneficiary Manager"
* status = #active
* experimental = false
* date = "2024-07-17"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "FAIS Beneficiary Manager processes requests from the Beneficiary Requestor on Insurance Plans and Enrollment Responses and receives the Enrollment Request submission."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #InsurancePlan
    * supportedProfile[+] = Canonical(FAISInsurancePlan)
    * documentation = """
FAIS Query Insurance Plan transaction [[ITI-YY2]](ITI-YY2.html)
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The status of the Insurance Plan"
    * searchParam[+]
      * name = "type"
      * type = #token
      * documentation = "The type of the Insurance Plan"
    * searchParam[+]
      * name = "name"
      * type = #string
      * documentation = "The name of the Insurance Plan"
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * documentation = "The business identifiers of the Insurance Plan"     
    * searchParam[+]
      * name = "administered-by"
      * type = #reference
      * documentation = "Who administers the Insurance Plan" 
    * searchParam[+]
      * name = "owned-by"
      * type = #reference
      * documentation = "Who owns the Insurance Plan"
  * resource[+]
    * type = #EnrollmentRequest
    * supportedProfile[+] = Canonical(FAISEnrollmentRequest)
    * documentation = """
FAIS Enroll Beneficiary transaction [[ITI-YY1]](ITI-YY1.html)
"""
    * operation[+]
      * name = "submit"
      * definition = Canonical(FAISEnrollmentRequestSubmit)
      * documentation = "Submits an enrollment request to enroll a new beneficiary with the request coverage.  FAIS Enroll Beneficiary transaction [[ITI-YY1]](ITI-YY1.html)"
  * resource[+]
    * type = #EnrollmentResponse
    * supportedProfile[+] = Canonical(FAISEnrollmentResponse)
    * documentation = """
FAIS Check Enrollment Status transaction [[ITI-YY3]](ITI-YY3.html)
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * name = "request"
      * type = #reference
      * documentation = "The enrollment request" 
  * interaction.code = #search-system
