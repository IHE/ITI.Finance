This section corresponds to transaction [ITI-YY1] of the IHE Technical Framework. Transaction [ITI-YY1] is used by the Beneficiary Requestor and Beneficiary Manager Actors. The Enroll Beneficiary [ITI-YY1] transaction is used to enroll a patient in a particular coverage offered by the insurance plan.

### 2:3.YY1.1 Scope

This transaction is used by the Beneficiary Requestor to request that a patient be enrolled with a given coverage.  The request is received by the Beneficiary Manager.  The Beneficiary Manager processes the request and returns a response with the status of the request.

### 2:3.YY1.2 Actors Roles

**Table2:3.YY1.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Beneficiary Requestor](volume-1.html#beneficiary-requestor)    | Sends the enrollment request to the Beneficiary Manager. |
| [Beneficiary Manager](volume-1.html#beneficiary-manager) | Receives and processes the request and returns a response to the Beneficiary Requestor |
{:.grid .table-striped}

### 2:3.YY1.3 Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0]({{site.data.fhir.path}})

### 2:3.YY1.4 Messages

<figure>
{%include ITI-YY1-seq.svg%}
<figcaption id="f2.3.YY1.4-1"><b>Figure 2:3.YY1.4-1: Interaction Diagram</b></figcaption>
</figure>
<br clear="all">

#### 2:3.YY1.4.1 Enroll Beneficiary Request Message

This message uses the HTTP POST method on the target Beneficiary Manager endpoint that is a [FAIS EnrollmentRequest $submit operation](OperationDefinition-IHE.FAIS.EnrollmentRequest.Submit.html).
It is sent from a Beneficiary Requestor.

##### 2:3.YY1.4.1.1 Trigger Events

When a Beneficiary Requestor needs to enroll a Patient with a given Coverage on the Beneficiary Manager, it submits the Enrollment Request Message.  The Coverage resource MAY be created by the Beneficiary Requestor based on the [InsurancePlan](StructureDefinition-IHE.FAIS.InsurancePlan.html) the beneficiary is enrolling in.  The Coverage MAY also be created by any other method that is beyond the scope of this profile.

##### 2:3.YY1.4.1.2 Message Semantics

The Beneficiary Requestor invokes the [FAIS EnrollmentRequest $submit operation](OperationDefinition-IHE.FAIS.EnrollmentRequest.Submit.html) on the Beneficiary Manager.  The operation is invoked by submitting an HTTP POST request to the Beneficiary Manager at the path:

```
POST [base]/EnrollmentRequest/$submit
```

The HTTP body SHALL consist of either a FHIR EnrollmentRequest resource conforming to the [FAIS EnrollmentRequest profile](StructureDefinition-IHE.FAIS.EnrollmentRequest.html) or an EnrollmentRequest Bundle including referenced resources conforming to the [FAIS EnrollmentRequest Bundle profile](StructureDefinition-IHE.FAIS.EnrollmentRequest.Bundle.html).

##### 2:3.YY1.4.1.3 Expected Actions

The Beneficiary Manager SHALL process the EnrollmentRequest and respond as per <{{site.data.fhir.path}}operations.html#response>, and if successful, with an `HTTP 200` (OK) and an [Enroll Beneficiary Response Message](#enroll-response).

The Beneficiary Manager SHALL persist the EnrollmentRequest resource and include a reference to it in the EnrollmentResponse resource.

<a name="enroll-response"></a>

#### 2:3.YY1.4.2 Enroll Beneficiary Response Message

##### 2:3.YY1.4.2.1 Trigger Events

The Beneficiary Manager has a response or errors to report to the Beneficiary Requestor.  This MAY include a queued response.

##### 2:3.YY1.4.2.2 Message Semantics

The Enroll Beneficiary Response conforms to the [FAIS EnrollmentResponse profile](StructureDefinition-IHE.FAIS.EnrollmentResponse.html) and is sent from the Beneficiary Manager to the Beneficiary Requestor.  If the disposition of the enrollment can't be handled synchronously, then the `outcome` element SHALL be set to `queued` and EnrollmentResponse SHALL include an `id` and persist on the Beneficiary Manager so that the [ITI-YY3 Check Enrollment Status](ITI-YY3.html) transaction can be used to get updates on the response.

##### 2:3.YY1.4.2.3 Expected Actions

How the Beneficiary Requestor processes the response is determined by the implementation and beyond the scope of this profile. 

### 2:3.YY1.5 CapabilityStatement Resource

Server implementing this transaction SHALL provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Beneficiary Requestor](CapabilityStatement-IHE.FAIS.BeneficiaryRequestor.html)
* Requirements CapabilityStatement for [Beneficiary Manager](CapabilityStatement-IHE.FAIS.BeneficiaryManager.html)

### 2:3.YY1.6 Security Considerations

See [FAIS Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY1.6.1 Security Audit Considerations

Note that the same audit message is recorded by both the Beneficiary Requestor and Beneficiary Manager.  The difference being the Audit Source element.  Both sides record to show consistency between the message sent by the Beneficiary Requestor and the action taken at the Beneficiary Manager.

The actors involved SHALL record audit events according to the [Audit Event for Enroll Beneficiary Transaction](StructureDefinition-IHE.FAIS.Audit.EnrollmentRequest.Submit.html).  See [Audit Example for Enroll Beneficiary from the Beneficiary Requestor](AuditEvent-ex-AuditFAISEnrollBeneficiary.html).