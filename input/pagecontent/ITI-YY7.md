This section corresponds to transaction [ITI-YY7] of the IHE IT
Infrastructure Technical Framework. Transaction [ITI-YY7] is used by
the Claims Manager and Coverage Requestor Actors.  The Check
Coverage Eligibility Status [ITI-YY7] transaction is used to get the status of a coverage eligibility request by
searching for `CoverageEligibilityResponse` resources.

### 2:3.YY7.1 Scope

This transaction is used by the Coverage Requestor to get the status of a coverage eligibility request
from a `CoverageEligibilityResponse` resource
based on criteria it provides in the query parameters of the request
message, or to retrieve a specific `CoverageEligibilityResponse`. The request is received by
the Claims Manager. The Claims Manager processes the
request and returns a response of the matching response resources.

### 2:3.YY7.2 Actors Roles

**Table 2:3.YY7.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Coverage Requestor](volume-1.html#coverage-requestor)    | Requests `CoverageEligibilityResponse`(s) matching the supplied set of criteria from the Claims Manager. |
| [Claims Manager](volume-1.html#claims-manager) | Returns information for `CoverageEligibilityResponse`(s) matching the criteria provided by the Coverage Requestor. |
{:.grid .table-striped}

### 2:3.YY7.3 Referenced Standards

- HL7 FHIR standard R4 <{{site.data.fhir.path}}index.html>

### 2:3.YY7.4 Messages

<figure>
{%include ITI-YY7-seq.svg%}
<figcaption id="f2.3.YY7.4-1"><b>Figure 2:3.YY7.4-1: Interaction Diagram</b></figcaption>
</figure>
<br clear="all"/>

#### 2:3.YY7.4.1 Search Coverage Eligibility Response Request Message

The Search Coverage Eligibility Response message is a FHIR search interaction on the
CoverageEligibilityResponse Resource.

##### 2:3.YY7.4.1.1 Trigger Events

A Coverage Requestor triggers a Search Coverage Eligibility Response Request to a
Claims Manager according to the business rules for the search.
These business rules are outside the scope of this transaction.

##### 2:3.YY7.4.1.2 Message Semantics

A Coverage Requestor initiates a search interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#search> on the CoverageEligibilityResponse resource.
The query parameters are identified below. A Coverage Requestor MAY
query any combination or subset of the parameters. The target is
formatted as:

```
GET [base]/CoverageEligibilityResponse?[parameter=value]
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

###### 2:3.YY7.4.1.2.1 Query Parameters

The Claims Manager SHALL support the following search parameters
as defined at <{{site.data.fhir.path}}search.html#all> and
<{{site.data.fhir.path}}coverageeligibilityresponse.html#search>.

```
_id
_lastUpdated
status
request
patient
requestor
```

The Claims Manager SHALL also support the following prefixes for
the `_lastUpdated` parameter: `gt`, `lt`, `ge`, `le`, `sa`, and `eb`.

##### 2:3.YY7.4.1.3 Expected Actions

The Claims Manager SHALL process the query to retrieve the coverage eligibility response(s) that match the search parameters given, and if successful, with an `HTTP 200` (OK) and a [Search Coverage Eligibility Response Response Message](#query-response) or an error as per <{{site.data.fhir.path}}search.html#errors>.

<a name="query-response"></a>

#### 2:3.YY7.4.2 Search Coverage Eligibility Response Response Message

##### 2:3.YY7.4.2.1 Trigger Events

The Claims Manager found Coverage Eligibility Responses matching the query
parameters specified by the Coverage Requestor as a result of a Search
Coverage Eligibility Response Request.

##### 2:3.YY7.4.2.2 Message Semantics

The Claims Manager SHALL support the search response message as
defined at <{{site.data.fhir.path}}http.html#search> on the CoverageEligibilityResponse, as
defined at <{{site.data.fhir.path}}coverageeligibilityresponse.html>.

The “content-type” of the response will depend upon the requested
response format indicated by the Coverage Requestor.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format
handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for handling guidance for Access
Denied.

###### 2:3.YY7.4.2.2.1 FHIR CoverageEligibilityResponse Resource Constraints

A CoverageEligibilityResponse Resource returned by the Claims Manager SHALL be further constrained as described in the [FAIS CoverageEligibilityResponse profile](StructureDefinition-IHE.FAIS.CoverageEligibilityResponse.html).

##### 2:3.YY7.4.2.3 Expected Actions

The Coverage Requestor has received the response and continues with
its workflow.

#### 2:3.YY7.4.3 Read Coverage Eligibility Response Request Message

This message represents an HTTP GET from the Coverage Requestor to the
Claims Manager and provides a mechanism for retrieving a single
CoverageEligibilityResponse with a known resource id.

##### 2:3.YY7.4.3.1 Trigger Events

When the Coverage Requestor possesses the id of CoverageEligibilityResponse (either
through query, database lookup, or other mechanism) for which it
requires additional or new information, it issues a Read Coverage Eligibility Response
Request.

##### 2:3.YY7.4.3.2 Message Semantics

A Coverage Requestor initiates a read interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#read> on the CoverageEligibilityResponse
Resource. The target is formatted as:

```
GET [base]/CoverageEligibilityResponse/[resourceId]
```

Where \[base\] is the URL of Claims Manager.

The resourceId included in the request always represents the unique id
for the CoverageEligibilityResponse within the scope of the URL. For example, while
http://example1.org/ihe/CoverageEligibilityResponse/1 and
http://example2.com/ihe/CoverageEligibilityResponse/1 both contain the same \[resourceId\],
they reference two different resource instances.

*Note: The use of "http" or "https" in URL does not override requirements
to use TLS for security purposes.*

A Claims Manager SHALL support responding to a request for both
the JSON and the XML messaging formats as defined in FHIR. A Claims
Requestor SHALL accept either the JSON or the XML messaging formats as
defined in FHIR. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for
this transaction.

##### 2:3.YY7.4.3.3 Expected Actions

The Claims Manager SHALL process the request to retrieve the
CoverageEligibilityResponse that matches the given resource id, and if successful, with an `HTTP 200` (OK) and a response as
defined at <{{site.data.fhir.path}}http.html#read> with the [Read Coverage Eligibility Response Response Message](#read-response) or an error code as
defined at <{{site.data.fhir.path}}http.html#Status-Codes>.

<a name="read-response"></a>

#### 2:3.YY7.4.4 Read Coverage Eligibility Response Response Message

##### 2:3.YY7.4.4.1 Trigger Events

The Claims Manager found a CoverageEligibilityResponse Resource matching the
resource identifier specified by the Coverage Requestor.

##### 2:3.YY7.4.4.2 Message Semantics

The Read Coverage Eligibility Response Response is sent from the Claims Manager to
the Coverage Requestor as a single CoverageEligibilityResponse, as defined at
<{{site.data.fhir.path}}coverageeligibilityresponse.html> and constrained by the [FAIS CoverageEligibilityResponse profile](StructureDefinition-IHE.FAIS.CoverageEligibilityResponse.html).

The “content-type” of the response will depend upon the requested
response format indicated by the Coverage Requestor.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format
handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for handling guidance for Access
Denied.

If the Claims Manager is unable to produce a response in the
requested format, it SHALL respond with an **HTTP 4xx** error indicating
that it was unable to fulfill the request. The Claims Manager
MAY be capable of servicing requests for response formats not listed,
but SHALL, at minimum, be capable of producing XML and JSON encodings.

##### 2:3.YY7.4.4.3 Expected Actions

The Coverage Requestor has received the response and continues with
its workflow.

### 2:3.122.5 CapabilityStatement Resource

Server implementing this transaction SHALL provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

- Requirements CapabilityStatement for [Coverage Requestor](CapabilityStatement-IHE.FAIS.CoverageRequestor.html)
- Requirements CapabilityStatement for [Claims Manager](CapabilityStatement-IHE.FAIS.ClaimsManager.html)

### 2:3.YY7.6 Security Considerations

See [FAIS Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY7.6.1 Security Audit Considerations

Note that the same audit message is recorded by both the Coverage Requestor and Claims Manager.  The difference being the Audit Source element.  Both sides record to show consistency between the message sent by the Coverage Requestor and the action taken at the Claims Manager.

The actors performing the Check Coverage Eligibility Status Query message SHALL record audit events according to the [Audit Event for Check Coverage Eligibility Status Query Transaction](StructureDefinition-IHE.FAIS.Audit.CoverageEligibilityResponse.Query.html).  See [Audit Example for Check Coverage Eligibility Status search from the Claims Manager](AuditEvent-ex-AuditFAISCoverageEligibilityResponseQuery.html).

The actors performing the Check Coverage Eligibility Status Read message SHALL record audit events according to the [Audit Event for Check Coverage Eligibility Status Read Transaction](StructureDefinition-IHE.FAIS.Audit.CoverageEligibilityResponse.Read.html).  See [Audit Example for Check Coverage Eligibility Status read message from the Coverage Requestor](AuditEvent-ex-AuditFAISCoverageEligibilityResponseRead.html).