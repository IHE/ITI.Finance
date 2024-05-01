
The Finance and Insurance Service (FAIS) Profile stores, categorizes, and facilitates the administration of centralized claims and finance related data to care provision to patients within the HIE. The service receives claims/financial data from Point of Service applications (including financing applications acting as a point of service interface outside of other PoS systems) and curates the management of them.

This collection of workflows allows an external system with access to the HIE to save and retrieve Finance and Insurance Information.  The workflows are designed to support the following types of data exchanges with systems that have access to the HIE.

1. A point-of-care system can enroll a beneficiary
1. A point-of-care system can search for a beneficiary in the Finance and Insurance Services system
1. A point-of-care system can check a beneficiary's eligibility
1. A point-of-care system can run a pre-determination, pre-authorization and claim
1. A point-of-care system can track a claim's status

<a name="actors-and-transactions"> </a>

## 1:XX.1 FAIS Actors, Transactions, and Content Modules

This section defines the actors, transactions, and/or content modules in this profile.
Further information about actor and transaction definitions can be found
in the IHE Technical Frameworks General Introduction [Appendix A: Actors](https://profiles.ihe.net/GeneralIntro/ch-A.html)
and [Appendix B: Transactions](https://profiles.ihe.net/GeneralIntro/ch-B.html).

Figure 1:XX.1-1 shows the actors directly involved in the FAIS Profile and the relevant
transactions between them. If needed for context, other actors that may
be indirectly involved due to their participation in other related profiles are
shown in dotted lines. Actors which have a mandatory grouping are shown in conjoined boxes.


* Actors
  * [Beneficiary Requestor](#beneficiary-requestor)
  * [Beneficiary Manager](#beneficiary-manager)
  * [Claims Requestor](#claims-requestor)
  * [Claims Manager](#claims-manager)
* Transactions
  * [Enroll Beneficiary [ITI-YY1]](ITI-YY1.html)
  * [Query Beneficiary [ITI-YY2]](ITI-YY2.html)
  * [Check Coverage Eligibility [ITI-YY3]](ITI-YY3.html)
  * [Submit Claim [ITI-YY4]](ITI-YY4.html)
  * [Track Claim [ITI-YY5]](ITI-YY5.html)

This section defines the actors and transactions in this implementation guide.

Figure XX.1-1 below shows the actors directly
involved in the Finance and Insurance Service 
Profile and the relevant transactions between them.

<figure>
{%include ActorsAndTransactions.svg%}
<figcaption><b>Figure XX.1-1: FAIS Actor Diagram</b></figcaption>
</figure>
<br clear="all">

<p id ="tXX.1-1" class="tableTitle">Table XX.1-1: FAIS - Actors and Transactions</p>

| Actors  | Transactions  | Initiator or Responder | Optionality     | Reference                         |
|---------|---------------|------------------------|-----------------|-----------------------------------|
| Beneficiary Requestor | Enroll Beneficiary | Initiator | R               | [FAIS TF-2: 3.YY1](ITI-YY1.html) |
|         | Query Beneficiary | Initiator  | O               | [FAIS TF-2: 3.YY2](ITI-YY2.html) |
|         | Check Coverage Eligibility | Initiator  | R               | [FAIS TF-2: 3.YY3](ITI-YY3.html) |
| Beneficiary Manager | Enroll Beneficiary | Responder | R               | [FAIS TF-2: 3.YY1](ITI-YY1.html) |
|         | Query Beneficiary | Responder  | R               | [FAIS TF-2: 3.YY2](ITI-YY2.html) |
|         | Check Coverage Eligibility | Responder  | R               | [FAIS TF-2: 3.YY3](ITI-YY3.html) |
| Claims Requestor | Submit Claim | Initiator | R               | [FAIS TF-2: 3.YY4](ITI-YY4.html) |
|         | Track Claim | Initiator  | O               | [FAIS TF-2: 3.YY5](ITI-YY5.html) |
| Claims Manager | Submit Claim | Responder | R               | [FAIS TF-2: 3.YY4](ITI-YY4.html) |
|         | Track Claim | Responder  | R               | [FAIS TF-2: 3.YY5](ITI-YY5.html) |
{: .grid}

### XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.

<a name="beneficiary-requestor"> </a>

#### XX.1.1.1 Beneficiary Requestor

The Beneficiary Requestor can enroll beneficiaries, check the coverage eligibility of beneficiaries and optionally query beneficiaries from a Beneficiary Manager.

TODO: FHIR Capability Statement for [Beneficiary Requestor]{CapabilityStatement-IHE.ToDo.client.html}

<a name="beneficiary-manager"> </a>

#### XX.1.1.2 Beneficiary Manager

The Beneficiary Manager processes requests from the Beneficiary Requestor actor.  It follows internal business processes to enroll beneficiaries from the Beneficiary Requestor that are beyond the scope of this profile and will return the result of the enrollment.  It also responds to queries about beneficiaries and coverage eligibility.

TODO: FHIR Capability Statement for [Beneficiary Manager](CapabilityStatement-IHE.ToDo.server.html)

<a name="claims-requestor"> </a>

#### XX.1.1.3 Claims Requestor

The Claims Requestor submits and tracks claims from the Claims Manager.

TODO: FHIR Capability Statement for [Claims Requestor](CapabilityStatement-IHE.ToDo.client.html)

<a name="claims-manager"> </a>

#### XX.1.1.4 Claims Manager

The Claims Manager processes claims requests from the Claims Requestor.  It follows internal business processes to create the claim that are beyond the scope of this profile.  It also responds to claim tracking requests to return the status of the requested claim.

TODO: FHIR Capability Statement for [Claims Manager](CapabilityStatement-IHE.ToDo.server.html)

### XX.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### XX.1.2.1 Enroll Beneficiary Transaction

This transaction is used to enroll or update a beneficiary.

For more details see the detailed [transaction description](ITI-YY1.html)

#### XX.1.2.2 Query Beneficiary Transaction

This transaction is used to query beneficiary details.

For more details see the detailed [transaction description](ITI-YY2.html)

#### XX.1.2.3 Check Coverage Eligibility Transaction

This transaction is used to check the coverage eligibility for a given beneficiary.

For more details see the detailed [transaction description](ITI-YY3.html)

#### XX.1.2.4 Submit Claim Transaction

This transaction is used to submit a claim.  This can be either a pre-determination, pre-authorization, or a final claim ready for payment.

For more details see the detailed [transaction description](ITI-YY4.html)

#### XX.1.2.5 Track Claim Transaction

This transaction is used to return the status of a given claim.

For more details see the detailed [transaction description](ITI-YY5.html)

<a name="actor-options"> </a>

## XX.2 FAIS Actor Options

<a name="required-groupings"> </a>

## XX.3 FAIS Required Actor Groupings

<a name="overview"> </a>

## XX.4 FAIS Overview

This section shows how the transactions/content modules of the profile
are combined to address the use cases.

Use cases are informative, not normative, and "SHALL" language is
not allowed in use cases.

### XX.4.1 Concepts

If needed, this section provides an overview of the concepts that
provide necessary background for understanding the profile. If not
needed, state "Not applicable." For an example of why/how this section
may be needed, please see ITI Cross Enterprise Workflow (XDW).

It may be useful in this section but is not necessary, to provide a
short list of the use cases described below and explain why they are
different.

### XX.4.2 Use Cases

#### XX.4.2.1 Use Case \#1: Enroll Household or Beneficiary

A field agent of the national insurance provider registers a household into a specific insurance scheme.

##### XX.4.2.1.1 Enroll Household or Beneficiary Use Case Description

Amara Nwosu is a field agent for the National Health Insurance Scheme (NHIS)
and is registering a household into the scheme.  Amara uses a tablet
to input the beneficiary information in the Financing and Insurance System.

1. Amara arrives at the home of the beneficiaries who identify themselves with their national ID card(s).
1. Amara queries the existence of the beneficiaries from the central ID or beneficiary register through the enrollment app on her tablet. The client register returns basic attributes of the beneficiaries (e.g. full names, address, birth date etc)
1. Amara captures all additional data needed for enrollment into a specific insurance scheme and submits it to the central Finance and Insurance System (FIS).
1. The eligibility of the beneficiary for this specific scheme is verified by either manual or automatic processes suing the FIS.
1. If the eligibility criteria are fulfilled, the beneficiary / household is being enrolled into the scheme in the FIS by creating a policy.
1. optionally: The FIS updates the insuree or policy number to the client register.
1. The FIS return a status notification about the successful enrollment back to the enrollment app.
1. Amara adds any additional data needed to the beneficiary record.

##### XX.4.2.1.2 Enroll Household or Beneficiary Process Flow

* App - The point of service system is a Beneficiary Requestor that captures an enrollment request.
* FIS - Financing and Insurance System is a Beneficiary Manager that manages data on beneficiaries and their coverage.
* Client Registry - Client Registry is a Patient Identity Manager that is a central repository of patient data for the country.

<figure>
{%include usecase1-processflow.svg%}
<figcaption><b>Figure XX.4.2.1.2-1: Enroll Household or Beneficiary Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">

#### XX.4.2.2 Use Case \#2: Lookup Beneficiary

An insurance agent is looking for information about a beneficiary to respond to a service desk call.

##### XX.4.2.2.1 Lookup Beneficiary Use Case Description

Amara Nwosu is a field agent for the National Health Insurance Scheme (NHIS)
and needs to lookup a beneficiary to respond to a service desk call.

1. The beneficiary calls Amara in her office, identifies themselves and formulates the service request.
1. optionally: Amara enters the beneficiary ID into her app (PoS) which verifies the beneficiary data from the Client Registry and pre-fetches the demographic information.
1. Amara sends an information request to the FIS using the beneficiary ID to the FIS.
1. The FIS sends a notification with the requested insurance details to the app.
1. Amara responds to the beneficiary request.

##### XX.4.2.2.2 Lookup Beneficiary Process Flow

* App - The point of service system is a Beneficiary Requestor that can lookup beneficiary information.
* FIS - Financing and Insurance System is a Beneficiary Manager that manages data on beneficiaries and their coverage.
* Client Registry - Client Registry is a Patient Identity Manager that is a central repository of patient data for the country.

<figure>
{%include usecase2-processflow.svg%}
<figcaption><b>Figure XX.4.2.2.2-1: Lookup Beneficiary Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">


#### XX.4.2.3 Use Case \#3: Check Coverage

A patient is diagnosed with cancer and needs chemotherapy. The hospital inquires about coverage for chemotherapy.

##### XX.4.2.3.1 Check Coverage Use Case Description

A patient is diagnosed with cancer in the local hospital. The responsible doctor want to apply a chemotherapy to the patient and needs to know whether the costs are covered by the insurance of the patient.

1. The patient arrives at the hospital and is diagnosed.
1. optionally: the doctor queries the needed procedures and medical items from a product catalogue in the Hospital Information System (POS)
1. optionally: the hospital information system verifies the product codifications from the FIS.
1. the doctor selects the needed procedures and items in the POS and sends a coverage eligibility request to the FIS
1. In a manual or automatic process, the eligibility for the requested procedures and items is verified in the FIS.
1. An eligibility response is sent from the FIS to the POS.
1. The doctor and the patient agree on the further treatment based on the eligibility response.

##### XX.4.2.3.2 Check Coverage Process Flow

* PoS - The point of service system is a Beneficiary Requestor that captures a patient clinical encounter.
* FIS - Financing and Insurance System is a Beneficiary Manager that manages data on beneficiaries and their coverage.


<figure>
{%include usecase3-processflow.svg%}
<figcaption><b>Figure XX.4.2.3.2-1: Check Coverage Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">


#### XX.4.2.4 Use Case \#4: File a Claim

A patient was treated in the hospital and the hospital requests reimbursement of the incurred costs.

##### XX.4.2.4.1 File a Claim Use Case Description

Claiming: a PoS system (e.g. Hospital) sends a request for reimbursement of costs incurred for a certain treatment to the FIS

1. A patient was treated with chemo-therapy in their local hospital and cured.
1. The hospital wants to prepare a hospital bill to reclaim the incurred costs.
1. optionally: the hospital admin queries the applied procedures and medical items from a product catalogue in the Hospital Information System (POS)
1. optionally: the hospital information system verifies the product codifications from the FIS.
1. the hospital admin builds a claim with the applied procedures and items in the POS which sends a claim to the FIS
1. In a manual or automatic process, the claim is adjudicated in the FIS.
1. optionally: a payment request is sent from the FIS to the payment system.
1. An claim response is sent from the FIS to the POS.

##### XX.4.2.4.2 File a Claim Process Flow

* PoS - The point of service system is a Claims Requestor that captures a patient clinical encounter and sends the formatted claim to the HIE.
* FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.
* EXT - an external payment layer

<figure>
{%include usecase4-processflow.svg%}
<figcaption><b>Figure XX.4.2.4.2-1: File a Claim Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">


#### XX.4.2.5 Use Case \#5: Pre Determination

An expensive treatment is needed and the Hospital wants to estimate the inputs they can apply.

##### XX.4.2.5.1 Pre Determination Use Case Description

Pre-determination: A PoS system (e.g. Hospital) requests an estimation of the expected reimbursement for a beneficiary’s specific treatment from the FIS (e.g Insurance).

1. A patient needs to be treated with chemo-therapy in their local hospital.
1. The hospital wants to inquire whether the expected reimbursement will cover the expected costs.
1. optionally: the hospital admin queries the planned procedures and medical items from a product catalogue in the Hospital Information System (POS)
1. optionally: the hospital information system verifies the product codifications from the FIS.
1. the hospital admin builds a pre-determination with the planned procedures and items in the POS which sends it to the FIS
1. In a manual or automatic process, the pre-determination is adjudicated in the FIS.
1. A pre-determination result is sent from the FIS to the POS.

##### XX.4.2.5.2 Pre Determination Process Flow

* PoS - The point of service system is a Claims Requestor that captures a patient clinical encounter and sends the formatted claim to the HIE.
* FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase5-processflow.svg%}
<figcaption><b>Figure XX.4.2.5.2-1: Pre Determination Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">

#### XX.4.2.6 Use Case \#6: Pre Authorization

A costly treatment is needed and has to be pre-approved by the insurance before it can be done.

1. A patient needs to be treated with chemo-therapy in their local hospital.
1. The hospital wants to confirm from the insurance that the costs for the treatment will be covered.
1. optionally: the hospital admin queries the planned procedures and medical items from a product catalogue in the Hospital Information System (POS)
1. optionally: the hospital information system verifies the product codifications from the FIS.
1. the hospital admin builds a pre-authorization with the planned procedures and items in the POS which sends it to the FIS
1. In a manual or automatic process, the pre-authorization is adjudicated in the FIS.
1. A pre-authorization result is sent from the FIS to the POS.

##### XX.4.2.6.1 Pre Authorization Use Case Description

Pre-authorization: A PoS system (e.g. Hospital) requests an approval for a specific treatment from the FIS (e.g Insurance). At the FIS a manual intervention is needed to authorize the requested 

##### XX.4.2.6.2 Pre Authorization Process Flow

* PoS - The point of service system is a Claims Requestor that captures a patient clinical encounter and sends the formatted claim to the HIE.
* FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase6-processflow.svg%}
<figcaption><b>Figure XX.4.2.6.2-1: Pre Authorization Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">

#### XX.4.2.7 Use Case \#7: Claim Tracking

Request the current processing status of a claim in the FIS

##### XX.4.2.7.1 Claim Tracking Use Case Description

A hospital has sent an electronic reimbursement claim to the insurance company. After a waiting period the hospital wants to verify if the claim was processed.

1. a patient was treated with chemo-therapy in their local hospital.
1. the hospital has sent a claim to the insurer a few days ago and stored the queued claim ID in the hopspital IS (=POS).
1. the hospital wants to confirm the processing status from the insurance.
1. the hospital admin sends a claim response query with the claim ID from the POS to the FIS
1. in an automated process, the FIS looks up the claim status.
1. a claim response is sent from the FIS to the POS.


##### XX.4.2.7.2 Claim Tracking Process Flow

* PoS - The point of service system is a Claims Requestor that has formulated a claim and waits for a response from the FIS.
* FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase7-processflow.svg%}
<figcaption><b>Figure XX.4.2.7.2-1: Claim Tracking Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">





<a name="security-considerations"> </a>

## XX.5 FAIS Security Considerations

See ITI TF-2x: [Appendix Z.8 "Mobile Security Considerations"](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

The resources exchanged in this profile may contain information which pose a privacy risk.  This includes PII for the beneficiaries as well as information about performed procedures.

There are many reasonable methods of security for interoperability transactions which can be implemented without modifying the characteristics of the transactions in this profile. The use of TLS is encouraged, specifically the use of the ATNA Profile (see [ITI TF-1: 9](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)).

User authentication on mobile devices and browsers is typically handled by more lightweight authentication schemes such as HTTP Authentication, OAuth 2.0, or OpenID Connect. IHE has a set of profiles for user authentication including [Internet User Authentication (IUA)](https://profiles.ihe.net/ITI/IUA/index.html) for REST-based authentication. The network communication security and user authentication are layered in the HTTP transport layer.

<a name="other-grouping"> </a>

## XX.6 FAIS Cross-Profile Considerations

### XX.6.1 Patient Demographics Query for Mobile -- PDQm

A Beneficiary Requestor or Beneficiary Manager could be grouped with a PDQm Patient Demographics Consumer to look up or validate beneficiary demographic details.

### XX.6.2 Patient Identifier Cross-reference for Mobile -- PIXm

A Beneficiary Requestor or Beneficiary Manager could be grouped with a PIXm Patient Identifier Cross-reference Consumer to look up additional beneficiary identifiers.  The Beneficiary Manager could also be grouped with a PIXm Patient Identity Source to add the beneficiary identifier using the [Patient Identity Feed FHIR [ITI-104]](https://profiles.ihe.net/ITI/PIXm/ITI-104.html).

### XX.6.3 Patient Master Identity Registry -- PMIR

A Beneficiary Requestor or Beneficiary Manager could also be grouped with a Patient Demographics Consumer or Patient Identifier Cross-reference Consumer in PMIR to perform the same queries as the previous sections on PDQm and PIXm. The Beneficiary Manager may be grouped with a PMIR Patient Identity Consumer to subscribe to updates from the PMIR Patient Identity Registry.  The Beneficiary Manager could also be grouped with a PMIR Patient Identity Source to update patient details in the Patient Identity Registry using [Mobile Patient Identity Feed [ITI-93]](https://profiles.ihe.net/ITI/PMIR/ITI-93.html).