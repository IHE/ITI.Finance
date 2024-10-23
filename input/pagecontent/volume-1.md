
The Finance and Insurance Service (FAIS) Profile stores, categorizes, and facilitates the administration of centralized claims and finance data for patient care. The service receives claims/financial data from Point of Service (POS) applications (including financing applications acting as a point of service interface outside of other POS systems) and curates the management of them.

This profile is initially focused on a greenfield implementation, a new system without relying on existing infrastructure or code, in emerging markets.  This isn't to say it can't be applied in other areas, but this is the initial scope.  Implementation with existing infrastructure may want to review [X12N - Insurance](https://x12.org/), [DaVinci Payer Data Exchange (PDex)](https://hl7.org/fhir/us/davinci-pdex/), and/or [DaVinci Prior Authorization Support (PAS)](https://hl7.org/fhir/us/davinci-pas/).

This collection of workflows allows an external system to save and retrieve Finance and Insurance Information.  The workflows are designed to support the following types of data exchanges with systems.

1. A point-of-care system can search for insurance plans to be used for enrolling a beneficiary, the patient whose health care expenses are being covered by the policy.
1. A point-of-care system can enroll a beneficiary.
1. A point-of-care system can check a beneficiary's eligibility for a given healthcare service.
1. A point-of-care system can run a pre-determination, pre-authorization and claim.
  1. A pre-determination is determine what services may be covered and to what amount.
  1. A pre-authorization is to receive approval for a service before it happens.
  1. A claim is to request payment for services that have been rendered.
1. A point-of-care system can track a claim's status.

<a name="actors-and-transactions"> </a>

## 1:XX.1 FAIS Actors, Transactions, and Content Modules

This section defines the actors, transactions, and/or content modules in this profile.
Further information about actor and transaction definitions can be found
in the IHE Technical Frameworks General Introduction [Appendix A: Actors](https://profiles.ihe.net/GeneralIntro/ch-A.html)
and [Appendix B: Transactions](https://profiles.ihe.net/GeneralIntro/ch-B.html).

- Actors
  - [Beneficiary Requestor](#beneficiary-requestor)
  - [Beneficiary Manager](#beneficiary-manager)
  - [Coverage Requestor](#coverage-requestor)
  - [Claims Requestor](#claims-requestor)
  - [Claims Manager](#claims-manager)
- Transactions
  - [Query Insurance Plan [ITI-121]](ITI-121.html)
  - [Enroll Beneficiary [ITI-122]](ITI-122.html)
  - [Check Enrollment Status [ITI-123]](ITI-123.html)
  - [Check Coverage Eligibility [ITI-124]](ITI-124.html)
  - [Check Coverage Eligibility Status [ITI-125]](ITI-125.html)
  - [Submit Claim [ITI-126]](ITI-126.html)
  - [Cancel Claim [ITI-127]](ITI-127.html)
  - [Re-process Claim [ITI-128]](ITI-128.html)
  - [Track Claim [ITI-129]](ITI-129.html)

Figure 1:XX.1-1 below shows the actors directly
involved in the Finance and Insurance Service 
Profile and the relevant transactions between them.

<figure>
{%include ActorsAndTransactions.svg%}
<figcaption><b>Figure 1:XX.1-1: FAIS Actor Diagram</b></figcaption>
</figure>
<br clear="all">

**Table 1:XX.1-1: FAIS - Actors and Transactions**

| Actors  | Transactions  | Initiator or Responder | Optionality     | Reference                         |
|---------|---------------|------------------------|-----------------|-----------------------------------|
| Beneficiary Requestor | Query Insurance Plan [ITI-121] | Initiator  | O               | [FAIS TF-2: 3.121](ITI-121.html) |
|         | Enroll Beneficiary [ITI-122] | Initiator | R               | [FAIS TF-2: 3.122](ITI-122.html) |
|         | Check Enrollment Status [ITI-123] | Initiator  | O               | [FAIS TF-2: 3.123](ITI-123.html) |
| Beneficiary Manager | Query Insurance Plan [ITI-121] | Responder  | R               | [FAIS TF-2: 3.121](ITI-121.html) |
|         | Enroll Beneficiary [ITI-122] | Responder | R               | [FAIS TF-2: 3.122](ITI-122.html) |
|         | Check Enrollment Status [ITI-123] | Responder  | R               | [FAIS TF-2: 3.123](ITI-123.html) |
| Coverage Requestor | Check Coverage Eligibility [ITI-124] | Initiator  | R               | [FAIS TF-2: 3.124](ITI-124.html) |
|         | Check Coverage Eligibility Status [ITI-121] | Initiator  | O               | [FAIS TF-2: 3.125](ITI-125.html) |
| Claims Requestor | Submit Claim [ITI-126] | Initiator | R               | [FAIS TF-2: 3.126](ITI-126.html) |
|         | Cancel Claim [ITI-127] | Initiator  | R               | [FAIS TF-2: 3.127](ITI-127.html) |
|         | Re-process Claim [ITI-128] | Initiator  | R               | [FAIS TF-2: 3.128](ITI-128.html) |
|         | Track Claim [ITI-129] | Initiator  | O               | [FAIS TF-2: 3.129](ITI-129.html) |
| Claims Manager | Check Coverage Eligibility [ITI-124] | Responder  | R               | [FAIS TF-2: 3.124](ITI-124.html) |
|         | Check Coverage Eligibility Status [ITI-125] | Responder  | R               | [FAIS TF-2: 3.125](ITI-125.html) |
|         | Submit Claim [ITI-126] | Responder | R               | [FAIS TF-2: 3.126](ITI-126.html) |
|         | Cancel Claim [ITI-127] | Responder  | R               | [FAIS TF-2: 3.127](ITI-127.html) |
|         | Re-process Claim [ITI-128] | Responder  | R               | [FAIS TF-2: 3.128](ITI-128.html) |
|         | Track Claim [ITI-129] | Responder  | R               | [FAIS TF-2: 3.129](ITI-129.html) |
{: .grid}

### 1:XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.

<a name="beneficiary-requestor"> </a>

#### 1:XX.1.1.1 Beneficiary Requestor

The Beneficiary Requestor can enroll beneficiaries and optionally query insurance plans from a Beneficiary Manager.

FHIR Capability Statement for [Beneficiary Requestor](CapabilityStatement-IHE.FAIS.BeneficiaryRequestor.html)

<a name="beneficiary-manager"> </a>

#### 1:XX.1.1.2 Beneficiary Manager

The Beneficiary Manager processes requests from the Beneficiary Requestor actor.  It follows internal business processes to enroll beneficiaries from the Beneficiary Requestor that are beyond the scope of this profile and will return the result of the enrollment.  It also responds to queries about insurance plans.

FHIR Capability Statement for [Beneficiary Manager](CapabilityStatement-IHE.FAIS.BeneficiaryManager.html)

<a name="coverage-requestor"> </a>

#### 1:XX.1.1.3 Coverage Requestor

The Coverage Requestor can check the coverage eligibility of beneficiaries from a Claims Manager.

FHIR Capability Statement for [Coverage Requestor](CapabilityStatement-IHE.FAIS.CoverageRequestor.html)

<a name="claims-requestor"> </a>

#### 1:XX.1.1.4 Claims Requestor

The Claims Requestor submits and tracks claims from the Claims Manager.

FHIR Capability Statement for [Claims Requestor](CapabilityStatement-IHE.FAIS.ClaimsRequestor.html)

<a name="claims-manager"> </a>

#### 1:XX.1.1.5 Claims Manager

The Claims Manager processes claims requests from the Claims Requestor and coverage requests from the Coverage Requestor.  It follows internal business processes to create the claim that are beyond the scope of this profile.  It also responds to claim tracking requests to return the status of the requested claim.

FHIR Capability Statement for [Claims Manager](CapabilityStatement-IHE.FAIS.ClaimsManager.html)

### 1:XX.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### 1:XX.1.2.1 Query Insurance Plan Transaction [ITI-121]

This transaction is used to search for available insurance plans.  The InsurancePlan resource describes a health insurance offering with a list of covered benefits, costs associated with those benefits, and any additional information about the offering.

For more details see the detailed [transaction description](ITI-121.html)

#### 1:XX.1.2.2 Enroll Beneficiary Transaction [ITI-122]

This transaction is used to enroll a beneficiary.  It is to request linking the beneficiary with a given Coverage that is associated with an InsurancePlan.  Once successfully enrolled, the beneficiary can receive covered health care services.

For more details see the detailed [transaction description](ITI-122.html)

#### 1:XX.1.2.3 Check Enrollment Status Transaction [ITI-123]

This transaction is used to check the status of an enrollment.

For more details see the detailed [transaction description](ITI-123.html)

#### 1:XX.1.2.4 Check Coverage Eligibility Transaction [ITI-124]

This transaction is used to check the coverage eligibility for a given beneficiary.  This can be used to query if a given service is covered by the insurance plan the beneficiary is enrolled in.

For more details see the detailed [transaction description](ITI-124.html)

#### 1:XX.1.2.5 Check Coverage Eligibility Status Transaction [ITI-125]

This transaction is used to check the status of a coverage eligibility request.

For more details see the detailed [transaction description](ITI-125.html)

#### 1:XX.1.2.6 Submit Claim Transaction [ITI-126]

This transaction is used to submit a claim.  This can be either a pre-determination, pre-authorization, or a final claim ready for payment.
- A pre-determination is determine what services may be covered and to what amount.
- A pre-authorization is to receive approval for a service before it happens.
- A claim is to request payment for services that have been rendered.

For more details see the detailed [transaction description](ITI-126.html)

#### 1:XX.1.2.7 Cancel Claim Transaction [ITI-127]

This transaction is used to cancel a previously submitted claim.

For more details see the detailed [transaction description](ITI-127.html)

#### 1:XX.1.2.8 Re-process Claim Transaction [ITI-128]

This transaction is used to re-process a previously submitted claim that was denied.  It may include additional details or
updates for the claim.

For more details see the detailed [transaction description](ITI-128.html)

#### 1:XX.1.2.9 Track Claim Transaction [ITI-129]

This transaction is used to return the status of a given claim.

For more details see the detailed [transaction description](ITI-129.html)


<a name="actor-options"> </a>

## 1:XX.2 FAIS Actor Options

No options.

<a name="required-groupings"> </a>

## 1:XX.3 FAIS Required Actor Groupings

No required actor groupings.

<a name="overview"> </a>

## 1:XX.4 FAIS Overview

### 1:XX.4.1 Concepts

These use cases can be combined in an overall workflow for handling beneficiaries and claims.  First a beneficiary will be enrolled due to a qualifying life event. When visiting a new doctor or updating an existing one, that office would query the beneficiary details.  Before starting a procedure, the provider's office can check coverage eligibility for the patient and procedure to make sure it's covered.  If the office needs to know the amount that would be covered, they can submit a pre-determination claim.  If the procedure needs a pre-authorization, the office would submit a pre-authorization claim.  Once the procedure has been completed, the office would submit the claim.  If any of the three types of claims aren't approved immediately or to see where the claim is in the process, the office can track the status of the claim.

Figure 1:XX.4.1-1 shows the enrollment workflow. 

<figure>
{%include overview-enroll.svg%}
<figcaption><b>Figure 1:XX.4.1-1: FAIS Enrollment Workflow</b></figcaption>
</figure>

Figure 1:XX.4.1-2 shows the claims workflow.

<figure>
{%include overview-visit.svg%}
<figcaption><b>Figure 1:XX.4.1-1: FAIS Claims Workflow</b></figcaption>
</figure>
<br clear="all">

### 1:XX.4.2 Use Cases

#### 1:XX.4.2.1 Use Case \#1: Enroll Household or Beneficiary

A field agent of the national insurance provider registers the members of a household into a specific insurance scheme.

##### 1:XX.4.2.1.1 Enroll Household or Beneficiary Use Case Description

Amara Nwosu is a field agent for the National Health Insurance Scheme (NHIS)
and is registering a household into the scheme.  Amara uses a tablet
to input the beneficiary information in the Financing and Insurance System.

1. Amara arrives at the home of the beneficiaries who identify themselves with their national ID card(s).
1. Amara queries the central Finance and Insurance System (FIS) for the appropriate Insurance Plan.
1. Amara captures all additional data needed for enrollment into a specific insurance scheme and submits it to the central FIS.
1. The eligibility of the beneficiary for this specific scheme is verified by either manual or automatic processes using the FIS.
1. If the eligibility criteria are fulfilled, the beneficiary / household is being enrolled into the scheme in the FIS by creating a policy.
1. Optionally: The FIS updates the insuree or policy number to the client register.
1. The FIS returns a status notification about the successful enrollment back to the enrollment app.
1. Amara adds any additional data needed to the beneficiary record.

##### 1:XX.4.2.1.2 Enroll Household or Beneficiary Process Flow

- App - The point of service system is a Beneficiary Requestor that captures an enrollment request.
- FIS - Financing and Insurance System is a Beneficiary Manager that manages data on beneficiaries and their coverage.

<figure>
{%include usecase1-processflow.svg%}
<figcaption><b>Figure 1:XX.4.2.1.2-1: Enroll Household or Beneficiary Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">

#### 1:XX.4.2.2 Use Case \#2: Check Coverage

A patient is diagnosed with cancer and needs chemotherapy. The hospital inquires about coverage for chemotherapy.

##### 1:XX.4.2.2.1 Check Coverage Use Case Description

A patient is diagnosed with cancer in the local hospital. The responsible doctor want to apply a chemotherapy to the patient and needs to know whether the costs are covered by the insurance of the patient.

1. The patient arrives at the hospital and is diagnosed.
1. Optionally: the doctor queries the needed procedures and medical items from a product catalog in the Hospital Information System.
1. Optionally: the hospital information system verifies the product codifications from the FIS.
1. The doctor selects the needed procedures and items in the POS and sends a coverage eligibility request to the FIS.
1. In a manual or automatic process, the eligibility for the requested procedures and items is verified in the FIS.
1. An eligibility response is sent from the FIS to the POS.
1. The doctor and the patient agree on the further treatment based on the eligibility response.

##### 1:XX.4.2.2.2 Check Coverage Process Flow

- POS - The point of service system is a Coverage Requestor that captures a patient clinical encounter.
- FIS - Financing and Insurance System is a Claims Manager that manages data on beneficiaries and their coverage.


<figure>
{%include usecase2-processflow.svg%}
<figcaption><b>Figure 1:XX.4.2.2.2-1: Check Coverage Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">


#### 1:XX.4.2.3 Use Case \#3: File a Claim

A patient was treated in the hospital and the hospital requests reimbursement of the incurred costs.

##### 1:XX.4.2.3.1 File a Claim Use Case Description

Claiming: a POS system (e.g., Hospital) sends a request for reimbursement of costs incurred for a certain treatment to the FIS

1. A patient was treated with chemotherapy in their local hospital and cured.
1. The hospital wants to prepare a hospital bill to reclaim the incurred costs.
1. Optionally: the hospital admin queries the applied procedures and medical items from a product catalogue in the Hospital Information System (POS).
1. Optionally: the hospital information system verifies the product codifications from the FIS.
1. The hospital admin builds a claim with the applied procedures and items in the POS which sends a claim to the FIS.
1. In a manual or automatic process, the claim is adjudicated in the FIS.
1. Optionally: a payment request is sent from the FIS to the payment system.
1. A claim response is sent from the FIS to the POS.

In some instances a claim request may need to be canceled or re-submitted for re-processing.  The POS system can send a follow up request to cancel a previously submitted claim.  If the claim was rejected and it needs to be re-adjudicated, then the POS can also re-submit the claim to be re-processed.

##### 1:XX.4.2.3.2 File a Claim Process Flow

- POS - The point of service system is a Claims Requestor that captures a patient clinical encounter and sends the formatted claim.
- FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.
- EXT - An external payment layer

<figure>
{%include usecase3-processflow.svg%}
<figcaption><b>Figure 1:XX.4.2.3.2-1: File a Claim Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">


#### 1:XX.4.2.4 Use Case \#4: Pre Determination

An expensive treatment is needed and the Hospital wants to estimate the inputs they can apply.

##### 1:XX.4.2.4.1 Pre Determination Use Case Description

Pre-determination: A POS system (e.g., Hospital) requests an estimation of the expected reimbursement for a beneficiary’s specific treatment from the FIS (e.g., Insurance).

1. A patient needs to be treated with chemotherapy in their local hospital.
1. The hospital wants to inquire whether the expected reimbursement will cover the expected costs.
1. Optionally: the hospital admin queries the planned procedures and medical items from a product catalogue in the Hospital Information System (POS).
1. Optionally: the hospital information system verifies the product codifications from the FIS.
1. The hospital admin builds a pre-determination with the planned procedures and items in the POS which sends it to the FIS.
1. In a manual or automatic process, the pre-determination is adjudicated in the FIS.
1. A pre-determination result is sent from the FIS to the POS.

##### 1:XX.4.2.4.2 Pre Determination Process Flow

- POS - The point of service system is a Claims Requestor that captures a patient clinical encounter and sends the formatted claim.
- FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase4-processflow.svg%}
<figcaption><b>Figure 1:XX.4.2.4.2-1: Pre Determination Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">

#### 1:XX.4.2.5 Use Case \#5: Pre Authorization

A costly treatment is needed and has to be pre-approved by the insurance before it can be done.

1. A patient needs to be treated with chemotherapy in their local hospital.
1. The hospital wants to confirm from the insurance that the costs for the treatment will be covered.
1. Optionally: the hospital admin queries the planned procedures and medical items from a product catalogue in the Hospital Information System (POS).
1. Optionally: the hospital information system verifies the product codifications from the FIS.
1. The hospital admin builds a pre-authorization with the planned procedures and items in the POS which sends it to the FIS.
1. In a manual or automatic process, the pre-authorization is adjudicated in the FIS.
1. A pre-authorization result is sent from the FIS to the POS.

##### 1:XX.4.2.5.1 Pre Authorization Use Case Description

Pre-authorization: A POS system (e.g., Hospital) requests an approval for a specific treatment from the FIS (e.g., Insurance). At the FIS a manual intervention is needed to authorize the requested 

##### 1:XX.4.2.5.2 Pre Authorization Process Flow

- POS - The point of service system is a Claims Requestor that captures a patient clinical encounter and sends the formatted claim.
- FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase5-processflow.svg%}
<figcaption><b>Figure 1:XX.4.2.5.2-1: Pre Authorization Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">

#### 1:XX.4.2.6 Use Case \#6: Claim Tracking

Request the current processing status of a claim in the FIS

##### 1:XX.4.2.6.1 Claim Tracking Use Case Description

A hospital has sent an electronic reimbursement claim to the insurance company. After a waiting period the hospital wants to verify if the claim was processed.

1. A patient was treated with chemotherapy in their local hospital.
1. The hospital has sent a claim to the insurer a few days ago and stored the queued claim ID in the hospital IS (=POS).
1. The hospital wants to confirm the processing status from the insurance.
1. The hospital admin sends a claim response query with the claim ID from the POS to the FIS.
1. In an automated process, the FIS looks up the claim status.
1. A claim response is sent from the FIS to the POS.

##### 1:XX.4.2.6.2 Claim Tracking Process Flow

- POS - The point of service system is a Claims Requestor that has formulated a claim and waits for a response from the FIS.
- FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase6-processflow.svg%}
<figcaption><b>Figure 1:XX.4.2.6.2-1: Claim Tracking Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">


<a name="security-considerations"> </a>

## 1:XX.5 FAIS Security Considerations

See ITI TF-2x: [Appendix Z.8 "Mobile Security Considerations"](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

The resources exchanged in this profile may contain information which pose a privacy risk.  This includes PII for the beneficiaries as well as information about performed procedures.

There are many reasonable methods of security for interoperability transactions which can be implemented without modifying the characteristics of the transactions in this profile. The use of TLS is encouraged, specifically the use of the ATNA Profile (see [ITI TF-1: 9](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)).

User authentication on mobile devices and browsers is typically handled by more lightweight authentication schemes such as HTTP Authentication, OAuth 2.0, or OpenID Connect. IHE has a set of profiles for user authentication including [Internet User Authentication (IUA)](https://profiles.ihe.net/ITI/IUA/index.html) for REST-based authentication. The network communication security and user authentication are layered in the HTTP transport layer.

<a name="other-grouping"> </a>

## 1:XX.6 FAIS Cross-Profile Considerations

### 1:XX.6.1 Patient Demographics Query for Mobile -- PDQm

A Beneficiary Requestor or Beneficiary Manager could be grouped with a PDQm Patient Demographics Consumer to look up or validate beneficiary demographic details.

### 1:XX.6.2 Patient Identifier Cross-reference for Mobile -- PIXm

A Beneficiary Requestor or Beneficiary Manager could be grouped with a PIXm Patient Identifier Cross-reference Consumer to look up additional beneficiary identifiers.  The Beneficiary Manager could also be grouped with a PIXm Patient Identity Source to add the beneficiary identifier using the [Patient Identity Feed FHIR [ITI-104]](https://profiles.ihe.net/ITI/PIXm/ITI-104.html).

### 1:XX.6.3 Patient Master Identity Registry -- PMIR

A Beneficiary Requestor or Beneficiary Manager could also be grouped with a Patient Demographics Consumer or Patient Identifier Cross-reference Consumer in PMIR to perform the same queries as the previous sections on PDQm and PIXm. The Beneficiary Manager MAY be grouped with a PMIR Patient Identity Consumer to subscribe to updates from the PMIR Patient Identity Registry.  The Beneficiary Manager could also be grouped with a PMIR Patient Identity Source to update patient details in the Patient Identity Registry using [Mobile Patient Identity Feed [ITI-93]](https://profiles.ihe.net/ITI/PMIR/ITI-93.html).

### 1:XX.6.4 Mobile Care Services Discovery -- mCSD

Any of the actors in this profile may need to look up other resources using mCSD, for example, for Practitioners, Facilities, or Organizations.  They Requestor actors could also look up the correct Endpoint for submitting the Beneficiary or Claims transaction from the Manager actors.
