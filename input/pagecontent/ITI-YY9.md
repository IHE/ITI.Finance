This section corresponds to transaction [ITI-YY9] of the IHE Technical Framework. Transaction [ITI-YY9] is used by the Claims Requestor and Claims Manager Actors. The Re-process Claim [ITI-YY9] transaction is used to re-process a claim for a patient.

### 2:3.YY9.1 Scope

This transaction is used by the Claims Requestor to re-process a claim for a patient.  The request is received by the Claims Manager.  The Claims Manager processes the request and returns a response with the status of the request.

### 2:3.YY9.2 Actors Roles

**Table2:3.YY9.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Claims Requestor](volume-1.html#claims-requestor)    | Sends the re-process request to the Claims Manager. |
| [Claims Manager](volume-1.html#claims-manager) | Receives and processes the request and returns a response to the Claims Requestor |
{:.grid .table-striped}

### 2:3.YY9.3 Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0]({{site.data.fhir.path}})

### 2:3.YY9.4 Messages

<figure>
{%include ITI-YY9-seq.svg%}
<p id="f2.3.YY9.4-1" class="figureTitle">Figure 2:3.YY9.4-1: Interaction Diagram</p>
</figure>
<br clear="all">

#### 2:3.YY9.4.1 Re-process Claim Request Message

This message uses the HTTP POST method on the target Claims Manager endpoint that is a [FAIS Claim $reprocess operation](OperationDefinition-IHE.FAIS.Claim.Reprocess.html).
It is sent from a Claims Requestor.

##### 2:3.YY9.4.1.1 Trigger Events

When a Claims Requestor needs to re-process a claim for a Patient to the Claims Manager, it submits the Re-process Claim Message.

##### 2:3.YY9.4.1.2 Message Semantics

The Claims Requestor invokes the [FAIS Claim $reprocess operation](OperationDefinition-IHE.FAIS.Claim.Reprocess.html) on the Claims Manager.  The operation is invoked by submitting an HTTP GET request to the Claims Manager at the path:

```
GET [base]/Claim/<resourceId>/$reprocess
```

Where <resourceId> is the resource id of the claim to be re-processed.


##### 2:3.YY9.4.1.3 Expected Actions

The Claims Manager SHALL re-process the claim and respond as per <{{site.data.fhir.path}}operations.html#response>, and if successful, with an `HTTP 200` (OK) and an [Re-process Claim Response Message](#enroll-response).

<a name="enroll-response"></a>

#### 2:3.YY9.4.2 Re-process Claim Response Message

##### 2:3.YY9.4.2.1 Trigger Events

The Claims Manager has a response or errors to report to the Claims Requestor.  This MAY include a queued response.

##### 2:3.YY9.4.2.2 Message Semantics

The Re-process Claim Response conforms to the [FAIS ClaimResponse profile](StructureDefinition-IHE.FAIS.ClaimResponse.html) and is sent from the Claims Manager to the Claims Requestor.  If the disposition of the claim can't be handled synchronously, then the `outcome` element SHALL be set to `queued` and ClaimResponse SHALL include an `id` and persist on the Claims Manager so that the [ITI-YY6 Track Claim](ITI-YY6.html) transaction can be used to get updates on the response.

If an error occurs, the Claims Manager MAY either return an ClaimResponse with the `outcome` set to `error` or return an HTTP error status code and SHOULD include an OperationOutcome for additional details.

##### 2:3.YY9.4.2.3 Expected Actions

How the Claims Requestor processes the response is determined by the implementation and beyond the scope of this profile. 

### 2:3.YY9.5 CapabilityStatement Resource

Server implementing this transaction shall provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Client](CapabilityStatement-IHE.ToDo.client.html)
* Requirements CapabilityStatement for [Server](CapabilityStatement-IHE.ToDo.server.html)

### 2:3.YY9.6 Security Considerations

See [FAIS Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY9.6.1 Security Audit Considerations

''TODO: The security audit criteria ''

##### 2:3.YY9.6.1.1 Client Audit

''TODO: the specifics''

##### 2:3.YY9.6.1.2 Server Audit

''TODO: the specifics''
