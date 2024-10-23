Instance: IHE.FAIS.BeneficiaryRequestor
InstanceOf: CapabilityStatement
Title: "Beneficiary Requestor Actor"
Usage: #definition
* description = """
CapabilityStatement for [Beneficiary Requestor Actor](volume-1.html#beneficiary-requestor).

The Beneficiary Requestor can enroll beneficiaries and optionally query insurance plans from a Beneficiary Manager.
"""
* url = "https://profiles.ihe.net/ITI/FAIS/CapabilityStatement/IHE.FAIS.BeneficiaryRequestor"
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
FAIS Query Insurance Plan transaction [[ITI-121]](ITI-121.html)
"""
    * interaction[+]
      * code = #read
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
    * interaction[+]
      * code = #search-type
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY      
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "status"
      * type = #token
      * documentation = "The status of the Insurance Plan"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "type"
      * type = #token
      * documentation = "The type of the Insurance Plan"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "name"
      * type = #string
      * documentation = "The name of the Insurance Plan"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "identifier"
      * type = #token
      * documentation = "The business identifiers of the Insurance Plan"     
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "administered-by"
      * type = #reference
      * documentation = "Who administers the Insurance Plan" 
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "owned-by"
      * type = #reference
      * documentation = "Who owns the Insurance Plan"
  * resource[+]
    * type = #EnrollmentRequest
    * supportedProfile[+] = Canonical(FAISEnrollmentRequest)
    * documentation = """
FAIS Enroll Beneficiary transaction [[ITI-122]](ITI-122.html)
"""
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "submit"
      * definition = Canonical(FAISEnrollmentRequestSubmit)
      * documentation = "Submits an enrollment request to enroll a new beneficiary with the request coverage.  FAIS Enroll Beneficiary transaction [[ITI-122]](ITI-122.html)"
  * resource[+]
    * type = #EnrollmentResponse
    * supportedProfile[+] = Canonical(FAISEnrollmentResponse)
    * documentation = """
FAIS Check Enrollment Status transaction [[ITI-123]](ITI-123.html)
"""
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * code = #search-type
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "request"
      * type = #reference
      * documentation = "The enrollment request" 
  * interaction
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #search-system

Instance: IHE.FAIS.BeneficiaryManager
InstanceOf: CapabilityStatement
Title: "Beneficiary Manager Actor"
Usage: #definition
* description = """
CapabilityStatement for [Beneficiary Manager Actor](volume-1.html#beneficiary-manager).

The Beneficiary Manager processes requests from the Beneficiary Requestor actor. It follows internal business processes to enroll beneficiaries from the Beneficiary Requestor that are beyond the scope of this profile and will return the result of the enrollment. It also responds to queries about insurance plans.
"""
* url = "https://profiles.ihe.net/ITI/FAIS/CapabilityStatement/IHE.FAIS.BeneficiaryManager"
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
FAIS Query Insurance Plan transaction [[ITI-121]](ITI-121.html)
"""
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #search-type
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "status"
      * type = #token
      * documentation = "The status of the Insurance Plan"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "type"
      * type = #token
      * documentation = "The type of the Insurance Plan"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "name"
      * type = #string
      * documentation = "The name of the Insurance Plan"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "identifier"
      * type = #token
      * documentation = "The business identifiers of the Insurance Plan"     
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "administered-by"
      * type = #reference
      * documentation = "Who administers the Insurance Plan" 
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "owned-by"
      * type = #reference
      * documentation = "Who owns the Insurance Plan"
  * resource[+]
    * type = #EnrollmentRequest
    * supportedProfile[+] = Canonical(FAISEnrollmentRequest)
    * documentation = """
FAIS Enroll Beneficiary transaction [[ITI-122]](ITI-122.html)
"""
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "submit"
      * definition = Canonical(FAISEnrollmentRequestSubmit)
      * documentation = "Submits an enrollment request to enroll a new beneficiary with the request coverage.  FAIS Enroll Beneficiary transaction [[ITI-122]](ITI-122.html)"
  * resource[+]
    * type = #EnrollmentResponse
    * supportedProfile[+] = Canonical(FAISEnrollmentResponse)
    * documentation = """
FAIS Check Enrollment Status transaction [[ITI-123]](ITI-123.html)
"""
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #search-type
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "request"
      * type = #reference
      * documentation = "The enrollment request" 
  * interaction
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-system


Instance: IHE.FAIS.CoverageRequestor
InstanceOf: CapabilityStatement
Title: "Coverage Requestor Actor"
Usage: #definition
* description = """
CapabilityStatement for [Coverage Requestor Actor](volume-1.html#coverage-requestor).

The Coverage Requestor checks for what coverage a patient has and can query for responses when the result is queued.
"""
* url = "https://profiles.ihe.net/ITI/FAIS/CapabilityStatement/IHE.FAIS.CoverageRequestor"
* name = "IHE_FAIS_CoverageRequestor"
* title = "IHE FAIS Coverage Requestor"
* status = #active
* experimental = false
* date = "2024-07-17"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "FAIS Coverage Requestor provides capability to submit coverage eligibility requests and query for coverage eligibility responses."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #CoverageEligibilityRequest
    * supportedProfile[+] = Canonical(FAISCoverageEligibilityRequest)
    * documentation = """
FAIS Check Coverage Eligibility transaction [[ITI-YY4]](ITI-YY4.html)
"""
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "submit"
      * definition = Canonical(FAISCoverageEligibilityRequestSubmit)
      * documentation = "Submits a coverage eligibility request to check the coverage of a beneficiary.  FAIS Check Coverage Eligibility transaction [[ITI-YY4]](ITI-YY4.html)."
  * resource[+]
    * type = #CoverageEligibilityResponse
    * supportedProfile[+] = Canonical(FAISCoverageEligibilityResponse)
    * documentation = """
FAIS Check Coverage Eligibility Status transaction [[ITI-YY7]](ITI-YY7.html)
"""
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * code = #search-type
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "request"
      * type = #reference
      * documentation = "The coverage eligiblity request"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "patient"
      * type = #reference
      * documentation = "The beneficiary"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "requestor"
      * type = #reference
      * documentation = "The provider making the request"
  * interaction
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #search-system


Instance: IHE.FAIS.ClaimsRequestor
InstanceOf: CapabilityStatement
Title: "Claims Requestor Actor"
Usage: #definition
* description = """
CapabilityStatement for [Claims Requestor Actor](volume-1.html#claims-requestor).

The Claims Requestor files a pre-determination, pre-authorization, or claim for a patient, as well as cancel and re-process claims, and can query for responses when the result is queued.
"""
* url = "https://profiles.ihe.net/ITI/FAIS/CapabilityStatement/IHE.FAIS.ClaimsRequestor"
* name = "IHE_FAIS_ClaimsRequestor"
* title = "IHE FAIS Claims Requestor"
* status = #active
* experimental = false
* date = "2024-07-17"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "FAIS Claims Requestor provides capability to submit claim requests and query for claim responses."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #Claim
    * supportedProfile[+] = Canonical(FAISClaim)
    * documentation = """
Supports these transactions:
* [Submit Claim [ITI-YY5]](ITI-YY5.html)
* [Cancel Claim [ITI-YY8]](ITI-YY8.html)
* [Re-process Claim [ITI-YY9]](ITI-YY9.html)
"""
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "submit"
      * definition = Canonical(FAISClaimSubmit)
      * documentation = "Submits a claim.  FAIS Submit Claim transaction [[ITI-YY5]](ITI-YY5.html)."
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "cancel"
      * definition = Canonical(FAISClaimCancel)
      * documentation = "Cancels a claim.  FAIS Cancel Claim transaction [[ITI-YY8]](ITI-YY8.html)."
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "reprocess"
      * definition = Canonical(FAISClaimReprocess)
      * documentation = "Re-processes a claim.  FAIS Re-process Claim transaction [[ITI-YY9]](ITI-YY9.html)."
  * resource[+]
    * type = #ClaimResponse
    * supportedProfile[+] = Canonical(FAISClaimResponse)
    * documentation = """
FAIS Track Claim transaction [[ITI-YY6]](ITI-YY6.html)
"""
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * code = #search-type
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "request"
      * type = #reference
      * documentation = "The coverage eligiblity request"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "patient"
      * type = #reference
      * documentation = "The beneficiary"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #MAY
      * name = "requestor"
      * type = #reference
      * documentation = "The provider making the request"
  * interaction
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #search-system


Instance: IHE.FAIS.ClaimsManager
InstanceOf: CapabilityStatement
Title: "Claims Manager Actor"
Usage: #definition
* description = """
CapabilityStatement for [Claims Requestor Actor](volume-1.html#claims-manager).

The Claims Manager processes claims requests from the Claims Requestor.  It follows internal business processes to create the claim that are beyond the scope of this profile.  It also responds to claim tracking requests to return the status of the requested claim.
"""
* url = "https://profiles.ihe.net/ITI/FAIS/CapabilityStatement/IHE.FAIS.ClaimsManager"
* name = "IHE_FAIS_ClaimsManager"
* title = "IHE FAIS Claims Manager"
* status = #active
* experimental = false
* date = "2024-07-17"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "FAIS Claims Manager rovides capability to receive claim submissions and respond to queries for claim responses."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #CoverageEligibilityRequest
    * supportedProfile[+] = Canonical(FAISCoverageEligibilityRequest)
    * documentation = """
FAIS Check Coverage Eligibility transaction [[ITI-YY4]](ITI-YY4.html)
"""
    * operation[+]
      * name = "submit"
      * definition = Canonical(FAISCoverageEligibilityRequestSubmit)
      * documentation = "Submits a coverage eligibility request to check the coverage of a beneficiary.  FAIS Check Coverage Eligibility transaction [[ITI-YY4]](ITI-YY4.html)."
  * resource[+]
    * type = #CoverageEligibilityResponse
    * supportedProfile[+] = Canonical(FAISCoverageEligibilityResponse)
    * documentation = """
FAIS Check Coverage Eligibility Status transaction [[ITI-YY7]](ITI-YY7.html)
"""
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #search-type
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "request"
      * type = #reference
      * documentation = "The coverage eligiblity request"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "patient"
      * type = #reference
      * documentation = "The beneficiary"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "requestor"
      * type = #reference
      * documentation = "The provider making the request"
  * resource[+]
    * type = #Claim
    * supportedProfile[+] = Canonical(FAISClaim)
    * documentation = """
Supports these transactions:
* [Submit Claim [ITI-YY5]](ITI-YY5.html)
* [Cancel Claim [ITI-YY8]](ITI-YY8.html)
* [Re-process Claim [ITI-YY9]](ITI-YY9.html)
"""
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "submit"
      * definition = Canonical(FAISClaimSubmit)
      * documentation = "Submits a claim.  FAIS Submit Claim transaction [[ITI-YY5]](ITI-YY5.html)."
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "cancel"
      * definition = Canonical(FAISClaimCancel)
      * documentation = "Cancels a claim.  FAIS Cancel Claim transaction [[ITI-YY8]](ITI-YY8.html)."
    * operation[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "reprocess"
      * definition = Canonical(FAISClaimReprocess)
      * documentation = "Re-processes a claim.  FAIS Re-process Claim transaction [[ITI-YY9]](ITI-YY9.html)."
  * resource[+]
    * type = #ClaimResponse
    * supportedProfile[+] = Canonical(FAISClaimResponse)
    * documentation = """
FAIS Track Claim transaction [[ITI-YY6]](ITI-YY6.html)
"""
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #search-type
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed.  The values for this shall support these prefixes: gt, lt, ge, le, sa, and eb."
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "status"
      * type = #token
      * documentation = "The status of the response"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "request"
      * type = #reference
      * documentation = "The coverage eligiblity request"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "patient"
      * type = #reference
      * documentation = "The beneficiary"
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "requestor"
      * type = #reference
      * documentation = "The provider making the request"
  * interaction
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-system