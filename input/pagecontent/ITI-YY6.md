This section corresponds to transaction [ITI-YY6] of the IHE IT
Infrastructure Technical Framework. Transaction [ITI-YY6] is used by
the Claims Manager and Claims Requestor Actors.  The Track Claim [ITI-YY6] transaction is used to get the status of a claim.

### 2:3.YY6.1 Scope

This transaction is used by the Claims Requestor to get the status of a claim 
based on criteria it provides in the query parameters of the request
message, or to retrieve a specific claim response. The request is received by
the Claims Manager. The Claims Manager processes the
request and returns a response of the matching claim responses.

### 2:3.YY6.2 Actors Roles

**Table2:3.YY6.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Claims Requestor](volume-1.html#claims-requestor)    | Requests claim response(s) matching the supplied set of criteria from the Claims Manager. |
| [Claims Manager](volume-1.html#claims-manager) | Returns information for claim response(s) matching the criteria provided by the Claims Requestor |
{:.grid .table-striped}

### 2:3.YY6.3 Referenced Standards

- HL7 FHIR standard R4 <{{site.data.fhir.path}}index.html>

### 2:3.YY6.4 Messages

<figure>
{%include ITI-YY6-seq.svg%}
<figcaption id="2.3.YY6.4-1"><b>Figure 2:3.YY6.4-1: Interaction Diagram</b></figcaption>
</figure>
<br clear="all"/>

#### 2:3.YY6.4.1 Search Claim Response Request Message

The Search Claim Response message is a FHIR search interaction on the
ClaimResponse Resource.

##### 2:3.YY6.4.1.1 Trigger Events

A Claims Requestor triggers a Search Claim Response Request to a
Claims Manager according to the business rules for the search.
These business rules are outside the scope of this transaction.

##### 2:3.YY6.4.1.2 Message Semantics

A Claims Requestor initiates a search interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#search> on the ClaimResponse resource.
The query parameters are identified below. A Claims Requestor MAY
query any combination or subset of the parameters. The target is
formatted as:

```
GET [base]/ClaimResponse?[parameter=value]
```
Where \[base\] is the URL of Claims Manager.

A Claims Manager SHALL support responding to a request for both
the JSON and the XML messaging formats as defined in FHIR. A Claims
Requestor SHALL accept either the JSON or the XML messaging formats as
defined in FHIR. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

A Claims Manager SHALL implement the parameters described below.
A Claims Manager MAY choose to support additional query
parameters beyond the subset listed below. Any additional query
parameters supported SHALL be supported according to the core FHIR
specification.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for
this transaction.

###### 2:3.YY6.4.1.2.1 Query Parameters

The Claims Manager SHALL support the following search parameters
as defined at <{{site.data.fhir.path}}search.html#all> and
<{{site.data.fhir.path}}claimresponse.html#search>.

```
_id
_lastUpdated
status
request
patient
```

The Claims Manager SHALL also support the following prefixes for
the `_lastUpdated` parameter: `gt`, `lt`, `ge`, `le`, `sa`, and `eb`.

##### 2:3.YY6.4.1.3 Expected Actions

The Claims Manager SHALL process the query to retrieve the claim response(s) that match the search parameters given and return a [Search Claim Response Response Message](#query-response) or an error as per <{{site.data.fhir.path}}search.html#errors>.

<a name="query-response"></a>

#### 2:3.YY6.4.2 Search Claim Response Response Message

##### 2:3.YY6.4.2.1 Trigger Events

The Claims Manager found Claim Responses matching the query
parameters specified by the Claims Requestor as a result of a Search
Claim Response Request.

##### 2:3.YY6.4.2.2 Message Semantics

The Claims Manager SHALL support the search response message as
defined at <{{site.data.fhir.path}}http.html#search> on the ClaimResponse, as
defined at <{{site.data.fhir.path}}claimresponse.html>

The “content-type” of the response will depend upon the requested
response format indicated by the Claims Requestor.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format
handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for handling guidance for Access
Denied.

###### 2:3.YY6.4.2.2.1 FHIR ClaimResponse Resource Constraints

A ClaimResponse Resource returned by the Claims Manager SHALL be further constrained as described in the [FAIS ClaimResponse profile](StructureDefinition-IHE.FAIS.ClaimResponse.html).

##### 2:3.YY6.4.2.3 Expected Actions

The Claims Requestor has received the response and continues with
its workflow.

#### 2:3.YY6.4.3 Read Claim Response Request Message

This message represents an HTTP GET from the Claims Requestor to the
Claims Manager and provides a mechanism for retrieving a single
ClaimResponse with a known resource id.

##### 2:3.YY6.4.3.1 Trigger Events

When the Claims Requestor possesses the id of ClaimResponse (either
through query, database lookup, or other mechanism) for which it
requires additional or new information, it issues a Read Claim Response
Request.

##### 2:3.YY6.4.3.2 Message Semantics

A Claims Requestor initiates a read interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#read> on the ClaimResponse
Resource. The target is formatted as:

```
GET [base]/ClaimResponse/[resourceId]
```

Where \[base\] is the URL of Claims Manager.

The resourceId included in the request always represents the unique id
for the ClaimResponse within the scope of the URL. For example, while
http://example1.org/ihe/ClaimResponse/1 and
http://example2.com/ihe/ClaimResponse/1 both contain the same \[resourceId\],
they reference two different resource instances.

*Note: The use of "http" or "https" in URL does not override requirements
to use TLS for security purposes.*

A Claims Manager SHALL support responding to a request for both
the JSON and the XML messaging formats as defined in FHIR. A Claims
Requestor SHALL accept either the JSON or the XML messaging formats as
defined in FHIR. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for
this transaction.

##### 2:3.YY6.4.3.3 Expected Actions

The Claims Manager SHALL process the request to retrieve the
ClaimResponse that matches the given resource id, and return a response as
defined at <{{site.data.fhir.path}}http.html#read> with the [Read Claim Response Response Message](#read-response) or an error code as
defined at <{{site.data.fhir.path}}http.html#Status-Codes>.

<a name="read-response"></a>

#### 2:3.YY6.4.4 Read Claim Response Response Message

The Claims Manager’s response to a successful Read Claim Response
message SHALL be an **HTTP 200** (OK) Status code with a ClaimResponse
Resource, or an appropriate error status code, optionally with an
OperationOutcome Resource.

##### 2:3.YY6.4.4.1 Trigger Events

The Claims Manager found a ClaimResponse Resource matching the
resource identifier specified by the Claims Requestor.

##### 2:3.YY6.4.4.2 Message Semantics

The Read Claim Response Response is sent from the Claims Manager to
the Claims Requestor as a single ClaimResponse, as defined at
<{{site.data.fhir.path}}claimresponse.html> and constrained by the [FAIS ClaimResponse profile](StructureDefinition-IHE.FAIS.ClaimResponse.html).

The “content-type” of the response will depend upon the requested
response format indicated by the Claims Requestor.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format
handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for handling guidance for Access
Denied.

##### 2:3.YY6.4.4.3 Expected Actions

The Claims Requestor has received the response and continues with
its workflow.

### 2:3.YY1.5 CapabilityStatement Resource

Server implementing this transaction SHALL provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Claims Requestor](CapabilityStatement-IHE.FAIS.ClaimsRequestor.html)
* Requirements CapabilityStatement for [Claims Manager](CapabilityStatement-IHE.FAIS.ClaimsManager.html)

### 2:3.YY6.6 Security Considerations

See [FAIS Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY6.6.1 Security Audit Considerations

Note that the same audit message is recorded by both the Claims Requestor and Claims Manager.  The difference being the Audit Source element.  Both sides record to show consistency between the message sent by the Claims Requestor and the action taken at the Claims Manager.

The actors performing the Track Claim Query message SHALL record audit events according to the [Audit Event for Track Claim Query Transaction](StructureDefinition-IHE.FAIS.Audit.ClaimResponse.Query.html).  See [Audit Example for Track Claim search from the Claims Manager](AuditEvent-ex-AuditFAISClaimResponseQuery.html).

The actors performing the Track Claim Read message SHALL record audit events according to the [Audit Event for Track Claim Read Transaction](StructureDefinition-IHE.FAIS.Audit.ClaimResponse.Read.html).  See [Audit Example for Track Claim read message from the Claims Requestor](AuditEvent-ex-AuditFAISClaimResponseRead.html).
