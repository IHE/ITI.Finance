This section corresponds to transaction [ITI-YY3] of the IHE IT
Infrastructure Technical Framework. Transaction [ITI-YY3] is used by
the Beneficiary Manager and Beneficiary Requestor Actors.  The Check
Enrollment Status [ITI-YY3] transaction is used to get the status of an enrollment request.

### 2:3.YY3.1 Scope

This transaction is used by the Beneficiary Requestor to get the status of an enrollment request
based on criteria it provides in the query parameters of the request
message, or to retrieve a specific enrollment response. The request is received by
the Beneficiary Manager. The Beneficiary Manager processes the
request and returns a response of the matching enrollment responses.

### 2:3.YY3.2 Actors Roles

**Table2:3.YY3.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Beneficiary Requestor](volume-1.html#beneficiary-requestor)    | Requests enrollment response(s) matching the supplied set of criteria from the Beneficiary Manager. |
| [Beneficiary Manager](volume-1.html#beneficiary-manager) | Returns information for enrollment response(s) matching the criteria provided by the Beneficiary Requestor |
{:.grid .table-striped}

### 2:3.YY3.3 Referenced Standards

- HL7 FHIR standard R4 <{{site.data.fhir.path}}index.html>

### 2:3.YY3.4 Messages

<div>
{%include ITI-YY3-seq.svg%}
</div>
<div style="clear: left;"></div>
**Figure 2:3.YY3.4-1: Interaction Diagram**

#### 2:3.YY3.4.1 Search Enrollment Response Request Message

The Search Enrollment Response message is a FHIR search interaction on the
EnrollmentResponse Resource.

##### 2:3.YY3.4.1.1 Trigger Events

A Beneficiary Requestor triggers a Search Enrollment Response Request to a
Beneficiary Manager according to the business rules for the search.
These business rules are outside the scope of this transaction.

##### 2:3.YY3.4.1.2 Message Semantics

A Beneficiary Requestor initiates a search interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#search> on the EnrollmentResponse resource.
The query parameters are identified below. A Beneficiary Requestor MAY
query any combination or subset of the parameters. The target is
formatted as:

```
GET [base]/EnrollmentResponse?[parameter=value]
```
Where \[base\] is the URL of Beneficiary Manager.

A Beneficiary Manager SHALL support responding to a request for both
the JSON and the XML messaging formats as defined in FHIR. A Beneficiary
Requestor SHALL accept either the JSON or the XML messaging formats as
defined in FHIR. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

A Beneficiary Manager SHALL implement the parameters described below.
A Beneficiary Manager MAY choose to support additional query
parameters beyond the subset listed below. Any additional query
parameters supported SHALL be supported according to the core FHIR
specification.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for
this transaction.

###### 2:3.YY3.4.1.2.1 Query Parameters

The Beneficiary Manager SHALL support the following search parameters
as defined at <{{site.data.fhir.path}}search.html#all> and
<{{site.data.fhir.path}}enrollmentresponse.html#search>.

```
_id
_lastUpdated
status
request
```

The Beneficiary Manager SHALL also support the following prefixes for
the `_lastUpdated` parameter: `gt`, `lt`, `ge`, `le`, `sa`, and `eb`.

##### 2:3.YY3.4.1.3 Expected Actions

The Beneficiary Manager SHALL process the query to retrieve the enrollment response(s) that match the search parameters given and return a [Search Enrollment Response Response Message](#query-response) or an error as per <{{site.data.fhir.path}}search.html#errors>.

<a name="query-response"></a>

#### 2:3.YY3.4.2 Search Enrollment Response Response Message

##### 2:3.YY3.4.2.1 Trigger Events

The Beneficiary Manager found Enrollment Responses matching the query
parameters specified by the Beneficiary Requestor as a result of a Search
Enrollment Response Request.

##### 2:3.YY3.4.2.2 Message Semantics

The Beneficiary Manager SHALL support the search response message as
defined at <{{site.data.fhir.path}}http.html#search> on the EnrollmentResponse, as
defined at <{{site.data.fhir.path}}enrollmentresponse.html>

The “content-type” of the response will depend upon the requested
response format indicated by the Beneficiary Requestor.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format
handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for handling guidance for Access
Denied.

###### 2:3.YY3.4.2.2.1 FHIR EnrollmentResponse Resource Constraints

A EnrollmentResponse Resource returned by the Beneficiary Manager SHALL be further constrained as described in the [FAIS EnrollmentResponse profile](StructureDefinition-IHE.FAIS.EnrollmentResponse.html).

##### 2:3.YY3.4.2.3 Expected Actions

The Beneficiary Requestor has received the response and continues with
its workflow.

#### 2:3.YY3.4.3 Read Enrollment Response Request Message

This message represents an HTTP GET from the Beneficiary Requestor to the
Beneficiary Manager and provides a mechanism for retrieving a single
EnrollmentResponse with a known resource id.

##### 2:3.YY3.4.3.1 Trigger Events

When the Beneficiary Requestor possesses the id of EnrollmentResponse (either
through query, database lookup, or other mechanism) for which it
requires additional or new information, it issues a Read Enrollment Response
Request.

##### 2:3.YY3.4.3.2 Message Semantics

A Beneficiary Requestor initiates a read interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#read> on the EnrollmentResponse
Resource. The target is formatted as:

```
GET [base]/EnrollmentResponse/[resourceId]
```

Where \[base\] is the URL of Beneficiary Manager.

The resourceId included in the request always represents the unique id
for the EnrollmentResponse within the scope of the URL. For example, while
http://example1.org/ihe/EnrollmentResponse/1 and
http://example2.com/ihe/EnrollmentResponse/1 both contain the same \[resourceId\],
they reference two different resource instances.

*Note: The use of "http" or "https" in URL does not override requirements
to use TLS for security purposes.*

A Beneficiary Manager SHALL support responding to a request for both
the JSON and the XML messaging formats as defined in FHIR. A Beneficiary
Requestor SHALL accept either the JSON or the XML messaging formats as
defined in FHIR. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for
this transaction.

##### 2:3.YY3.4.3.3 Expected Actions

The Beneficiary Manager SHALL process the request to retrieve the
EnrollmentResponse that matches the given resource id, and return a response as
defined at <{{site.data.fhir.path}}http.html#read> with the [Read Enrollment Response Response Message](#read-response) or an error code as
defined at <{{site.data.fhir.path}}http.html#Status-Codes>.

<a name="read-response"></a>

#### 2:3.YY3.4.4 Read Enrollment Response Response Message

The Beneficiary Manager’s response to a successful Read Enrollment Response
message SHALL be an **HTTP 200** (OK) Status code with a EnrollmentResponse
Resource, or an appropriate error status code, optionally with an
OperationOutcome Resource.

##### 2:3.YY3.4.4.1 Trigger Events

The Beneficiary Manager found a EnrollmentResponse Resource matching the
resource identifier specified by the Beneficiary Requestor.

##### 2:3.YY3.4.4.2 Message Semantics

The Read Enrollment Response Response is sent from the Beneficiary Manager to
the Beneficiary Requestor as a single EnrollmentResponse, as defined at
<{{site.data.fhir.path}}enrollmentresponse.html> and constrained by the [FAIS EnrollmentResponse profile](StructureDefinition-IHE.FAIS.EnrollmentResponse.html).

The “content-type” of the response will depend upon the requested
response format indicated by the Beneficiary Requestor.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format
handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for handling guidance for Access
Denied.

If the Beneficiary Manager is unable to produce a response in the
requested format, it SHALL respond with an **HTTP 4xx** error indicating
that it was unable to fulfill the request. The Beneficiary Manager
MAY be capable of servicing requests for response formats not listed,
but SHALL, at minimum, be capable of producing XML and JSON encodings.

##### 2:3.YY3.4.4.3 Expected Actions

The Beneficiary Requestor has received the response and continues with
its workflow.

### 2:3.YY1.5 CapabilityStatement Resource

Server implementing this transaction SHALL provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Beneficiary Requestor](CapabilityStatement-IHE.FAIS.BeneficiaryRequestor.html)
* Requirements CapabilityStatement for [Beneficiary Manager](CapabilityStatement-IHE.FAIS.BeneficiaryManager.html)

### 2:3.YY3.6 Security Considerations

See [FAIS Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY3.6.1 Security Audit Considerations

''TODO: The security audit criteria ''

##### 2:3.YY3.6.1.1 Client Audit

''TODO: the specifics''

##### 2:3.YY3.6.1.2 Server Audit

''TODO: the specifics''
