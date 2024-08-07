This section corresponds to transaction [ITI-YY4] of the IHE IT Infrastructure Technical Framework. Transaction [ITI-YY4] is used by the Coverage Requestor and Claims Manager Actors. The Check Coverage Eligibility [ITI-YY4] transaction is used to check the coverage for a patient.

### 2:3.YY4.1 Scope

This transaction is used by the Coverage Requestor to check if a product or service is covered for the patient.  The request is received by the Claims Manager.  The Claims Manager processes the request and returns a response with the status of the request.

### 2:3.YY4.2 Actors Roles

**Table 2:3.YY4.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Coverage Requestor](volume-1.html#coverage-requestor)    | Sends the coverage eligibility request to the Claims Manager. |
| [Claims Manager](volume-1.html#claims-manager) | Receives and processes the request and returns a response to the Coverage Requestor |
{:.grid .table-striped}

### 2:3.YY4.3 Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0]({{site.data.fhir.path}})

### 2:3.YY4.4 Messages

<figure>
{%include ITI-YY4-seq.svg%}
<figcaption id="f2.3.YY4.4-1"><b>Figure 2:3.YY4.4-1: Interaction Diagram</b></figcaption>
</figure>
<br clear="all">

#### 2:3.YY4.4.1 Check Coverage Eligibility Request Message

This message uses the HTTP POST method on the target Claims Manager endpoint that is a [FAIS CoverageEligibilityRequest $submit operation](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html).
It is sent from a Coverage Requestor.

##### 2:3.YY4.4.1.1 Trigger Events

When a Coverage Requestor needs to check the coverage of a Patient  on the Claims Manager, it submits the Check Coverage Eligibility Request Message.

##### 2:3.YY4.4.1.2 Message Semantics

The Coverage Requestor invokes the [FAIS CoverageEligibilityRequest $submit operation](OperationDefinition-IHE.FAIS.CoverageEligibilityRequest.Submit.html) on the Claims Manager.  The operation is invoked by submitting an HTTP POST request to the Claims Manager at the path:

```
POST [base]/CoverageEligibilityRequest/$submit
```

The HTTP body SHALL consist of either a FHIR CoverageEligibilityRequest resource conforming to the [FAIS CoverageEligibilityRequest profile](StructureDefinition-IHE.FAIS.CoverageEligibilityRequest.html) or a CoverageEligibilityRequest Bundle including referenced resources conforming to the [FAIS CoverageEligibilityRequest Bundle profile](StructureDefinition-IHE.FAIS.CoverageEligibilityRequest.Bundle.html).

##### 2:3.YY4.4.1.3 Expected Actions

The Claims Manager SHALL process the CoverageEligibilityRequest and respond as per <{{site.data.fhir.path}}operations.html#response>, and if successful, with an `HTTP 201` (CREATED) and a [Check Coverage Eligibility Response Message](#enroll-response).

The Claims Manager SHALL persist the CoverageEligibilityRequest resource and include a reference to it in the CoverageEligibilityResponse resource.

<a name="enroll-response"></a>

#### 2:3.YY4.4.2 Check Coverage Eligibility Response Message

##### 2:3.YY4.4.2.1 Trigger Events

The Claims Manager has a response or errors to report to the Coverage Requestor.  This MAY include a queued response.

##### 2:3.YY4.4.2.2 Message Semantics

The Check Coverage Eligibility Response conforms to the [FAIS CoverageEligibilityResponse profile](StructureDefinition-IHE.FAIS.CoverageEligibilityResponse.html) and is sent from the Claims Manager to the Coverage Requestor.  If the disposition of the coverage eligibility request can't be handled synchronously, then the `outcome` element SHALL be set to `queued` and CoverageEligibilityResponse SHALL include an `id` and persist on the Claims Manager so that the [ITI-YY3 Check Enrollment Status](ITI-YY3.html) transaction can be used to get updates on the response.

##### 2:3.YY4.4.2.3 Expected Actions

How the Coverage Requestor processes the response is determined by the implementation and beyond the scope of this profile. 

### 2:3.YY4.5 CapabilityStatement Resource

Server implementing this transaction SHALL provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

- Requirements CapabilityStatement for [Coverage Requestor](CapabilityStatement-IHE.FAIS.CoverageRequestor.html)
- Requirements CapabilityStatement for [Claims Manager](CapabilityStatement-IHE.FAIS.ClaimsManager.html)

### 2:3.YY4.6 Security Considerations

See [FAIS Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY4.6.1 Security Audit Considerations

Note that the same audit message is recorded by both the Coverage Requestor and Claims Manager.  The difference being the Audit Source element.  Both sides record to show consistency between the message sent by the Coverage Requestor and the action taken at the Claims Manager.

The actors involved SHALL record audit events according to the [Audit Event for Check Coverage Eligibility Transaction](StructureDefinition-IHE.FAIS.Audit.CoverageEligibilityRequest.Submit.html).  See [Audit Example for Check Coverage Eligibility from the Coverage Requestor](AuditEvent-ex-AuditFAISCheckCoverageEligibility.html).
