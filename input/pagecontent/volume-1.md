
# 1:XX Finance and Insurance Service

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

The Client queries for blah meeting certain criteria and may retrieve selected blah.

TODO: FHIR Capability Statement for [Client]{CapabilityStatement-IHE.ToDo.client.html}

<a name="beneficiary-manager"> </a>

#### XX.1.1.2 Beneficiary Manager

The Sever processes query request from the Client actor.

TODO: FHIR Capability Statement for [Server](CapabilityStatement-IHE.ToDo.server.html)

<a name="claims-requestor"> </a>

#### XX.1.1.3 Claims Requestor

The Client queries for blah meeting certain criteria and may retrieve selected blah.

TODO: FHIR Capability Statement for [Client]{CapabilityStatement-IHE.ToDo.client.html}

<a name="claims-manager"> </a>

#### XX.1.1.4 Claims Manager

The Sever processes query request from the Client actor.

TODO: FHIR Capability Statement for [Server](CapabilityStatement-IHE.ToDo.server.html)

### Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### ToDo do transaction

This transaction is used to **do things**

For more details see the detailed [transaction description](domain-YY.html)

<a name="actor-options"> </a>

## XX.2 ToDo Actor Options

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies
between options when applicable are specified in notes.

<p id ="tXX.1-1" class="tableTitle">Table XX.1-1: Actor Options</p>

|         |             |
|---------|-------------|
| Actor   | Option Name |
| Actor A | Option AB  |
| Actor B | none |
{: .grid}

### XX.2.1 AB Option

**TODO: describe this option and the Volume 1 requirements for this option

<a name="required-groupings"> </a>

## XX.3 ToDo Required Actor Groupings

*Describe any requirements for actors in this profile to be grouped
with other actors.*

*This section specifies all REQUIRED Actor Groupings (although
"required" sometimes allows for a selection of one of several). To
SUGGEST other profile groupings or helpful references for other profiles
to consider, use Section XX.6 Cross Profile Considerations. Use Section
X.5 for security profile recommendations.*


<a name="overview"> </a>

## XX.4 ToDo Overview

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

##### XX.4.2.5.2 Pre Determination Process Flow

* PoS - The point of service system is a Claims Requestor that captures a patient clinical encounter and sends the formatted claim to the HIE.
* FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase5-processflow.svg%}
<figcaption><b>Figure XX.4.2.5.2-1: Pre Determination Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">

#### XX.4.2.6 Use Case \#6: Pre Authorization

A costly surgery is needed and has to be pre-approved by the insurance before it can be done.


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

##### XX.4.2.7.2 Claim Tracking Process Flow

* PoS - The point of service system is a Claims Requestor that has formulated a claim and waits for a response from the FIS.
* FIS - Financing and Insurance System is a Claims Manager that manages the claims processing and scrutinization.

<figure>
{%include usecase7-processflow.svg%}
<figcaption><b>Figure XX.4.2.7.2-1: Claim Tracking Process Flow in Profile FAIS</b></figcaption>
</figure>
<br clear="all">





<a name="security-considerations"> </a>

## XX.5 ToDo Security Considerations

See ITI TF-2x: [Appendix Z.8 "Mobile Security Considerations"](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

The following is instructions to the editor and this text is not to be included in a publication.
The material initially from [RFC 3552 "Security Considerations Guidelines" July 2003](https://tools.ietf.org/html/rfc3552).

This section should address downstream design considerations, specifically for: Privacy, Security, and Safety. These might need to be individual header sections if they are significant or need to be referenced.

The editor needs to understand Security and Privacy fundamentals.
General [Security and Privacy guidance]({{site.data.fhir.path}}secpriv-module.html) is provided in the FHIR Specification. 
The FHIR core specification should be leveraged where possible to inform the reader of your specification.

IHE FHIR based profiles should reference the [ITI Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html) section 8 Mobile Security and Privacy Considerations base when appropriate.

IHE Document Content profiles can reference the security and privacy provided by the Document Sharing infrastructure as directly grouped or possibly to be grouped.

   While it is not a requirement that any given specification or system be
   immune to all forms of attack, it is still necessary for authors of specifications to
   consider as many forms as possible.  Part of the purpose of the
   Security and Privacy Considerations section is to explain what attacks have been
   considered and what countermeasures can be applied to defend against them.

   There should be a clear description of the kinds of threats on the
   described specification.  This should be approached as an
   effort to perform "due diligence" in describing all known or
   foreseeable risks and threats to potential implementers and users.

Authors MUST describe:

* which attacks have been considered and addressed in the specification
* which attacks have been considered but not addressed in the specification
* what could be done in system design, system deployment, or user training

   At least the following forms of attack MUST be considered:
   eavesdropping, replay, message insertion, deletion, modification, and
   man-in-the-middle.  Potential denial of service attacks MUST be
   identified as well.  If the specification incorporates cryptographic
   protection mechanisms, it should be clearly indicated which portions
   of the data are protected and what the protections are (i.e.,
   integrity only, confidentiality, and/or endpoint authentication,
   etc.).  Some indication should also be given to what sorts of attacks
   the cryptographic protection is susceptible.  Data which should be
   held secret (keying material, random seeds, etc.) should be clearly
   labeled.

   If the specification involves authentication, particularly user-host
   authentication, the security of the authentication method MUST be
   clearly specified.  That is, authors MUST document the assumptions
   that the security of this authentication method is predicated upon.

   The threat environment addressed by the Security and Privacy Considerations
   section MUST at a minimum include deployment across the global
   Internet across multiple administrative boundaries without assuming
   that firewalls are in place, even if only to provide justification
   for why such consideration is out of scope for the protocol.  It is
   not acceptable to only discuss threats applicable to LANs and ignore
   the broader threat environment.  In
   some cases, there might be an Applicability Statement discouraging
   use of a technology or protocol in a particular environment.
   Nonetheless, the security issues of broader deployment should be
   discussed in the document.

   There should be a clear description of the residual risk to the user
   or operator of that specification after threat mitigation has been
   deployed.  Such risks might arise from compromise in a related
   specification (e.g., IPsec is useless if key management has been
   compromised), from incorrect implementation, compromise of the
   security technology used for risk reduction (e.g., a cipher with a
   40-bit key), or there might be risks that are not addressed by the
   specification (e.g., denial of service attacks on an
   underlying link protocol).  Particular care should be taken in
   situations where the compromise of a single system would compromise
   an entire protocol.  For instance, in general specification designers
   assume that end-systems are inviolate and don't worry about physical
   attack.  However, in cases (such as a certificate authority) where
   compromise of a single system could lead to widespread compromises,
   it is appropriate to consider systems and physical security as well.

   There should also be some discussion of potential security risks
   arising from potential misapplications of the specification or technology
   described in the specification.  
  
This section also include specific considerations regarding Digital Signatures, Provenance, Audit Logging, and De-Identification.

Where audit logging is specified, a StructureDefinition profile(s) should be included, and Examples of those logs might be included.

<a name="other-grouping"> </a>

## XX.6 ToDo Cross-Profile Considerations

This section is informative, not normative. It is intended to put
this profile in context with other profiles. Any required groupings
should have already been described above. Brief descriptions can go
directly into this section; lengthy descriptions should go into an
appendix. Examples of this material include ITI Cross Community Access
(XCA) Grouping Rules (Section 18.2.3), the Radiology associated profiles
listed at wiki.ihe.net, or ITI Volume 1 Appendix E "Cross Profile
Considerations", and the "See Also" sections Radiology Profile
descriptions on the wiki such as
<http://wiki.ihe.net/index.php/Scheduled_Workflow#See_Also>. If this
section is left blank, add "Not applicable."

Consider using a format such as the following:

other profile acronym - other profile name

A other profile actor name in other profile name might
be grouped with a this profile actor name to describe
benefit/what is accomplished by grouping.
