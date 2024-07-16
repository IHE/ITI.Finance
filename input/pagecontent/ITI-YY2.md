This section corresponds to transaction [ITI-YY2] of the IHE IT
Infrastructure Technical Framework. Transaction [ITI-YY2] is used by
the Beneficiary Manager and Beneficiary Requestor Actors.  The Query
Insurance Plan [ITI-YY2] transaction is used to discover insurance plans to be used when enrolling beneficiaries.

### 2:3.YY2.1 Scope

This transaction is used by the Beneficiary Requestor to find insurance plans
based on criteria it provides in the query parameters of the request
message, or to retrieve a specific insurance plan. The request is received by
the Beneficiary Manager. The Beneficiary Manager processes the
request and returns a response of the matching insurance plans.

### 2:3.YY2.2 Actors Roles

**Table2:3.YY2.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Beneficiary Requestor](volume-1.html#beneficiary-requestor)    | Requests insurance plan(s) matching the supplied set of criteria from the Beneficiary Manager. |
| [Beneficiary Manager](volume-1.html#beneficiary-manager) | Returns information for insurance plan(s) matching the criteria provided by the Beneficiary Requestor |
{:.grid .table-striped}

### 2:3.YY2.3 Referenced Standards

- HL7 FHIR standard R4 <{{site.data.fhir.path}}index.html>

### 2:3.YY2.4 Messages

<div>
{%include ITI-YY2-seq.svg%}
</div>
<div style="clear: left;"></div>
**Figure 2:3.YY2.4-1: Interaction Diagram**

#### 2:3.YY2.4.1 Search Insurance Plan Request Message

The Search Insurance Plan message is a FHIR search interaction on the
InsurancePlan Resource.

##### 2:3.YY2.4.1.1 Trigger Events

A Beneficiary Requestor triggers a Search Insurance Plan Request to a
Beneficiary Manager according to the business rules for the search.
These business rules are outside the scope of this transaction.

##### 2:3.YY2.4.1.2 Message Semantics

A Beneficiary Requestor initiates a search interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#search> on the InsurancePlan resource.
The query parameters are identified below. A Beneficiary Requestor MAY
query any combination or subset of the parameters. The target is
formatted as:

```
GET [base]/InsurancePlan?[parameter=value]
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

###### 2:3.YY2.4.1.2.1 Query Parameters

The Beneficiary Manager SHALL support the :contains and :exact
modifiers in all of the string query parameters below defined at
<{{site.data.fhir.path}}search.html#string>.

The Beneficiary Manager SHALL support the following search parameters
as defined at <{{site.data.fhir.path}}search.html#all> and
<http://{{site.data.fhir.path}}InsurancePlan.html#search>.

```
_id
_lastUpdated
status
type
name
identifier
administered-by
owned-by
```

The Beneficiary Manager SHALL also support the following prefixes for
the `_lastUpdated` parameter: `gt`, `lt`, `ge`, `le`, `sa`, and `eb`.

##### 2:3.YY2.4.1.3 Expected Actions

The Beneficiary Manager SHALL process the query to discover the insurance
plan(s) that match the search parameters given and return a [Search Insurance Plan Response Message](#query-response) or an error as per
<{{site.data.fhir.path}}search.html#errors>.

<a name="query-response"></a>

#### 2:3.YY2.4.2 Search Insurance Plan Response Message

##### 2:3.YY2.4.2.1 Trigger Events

The Beneficiary Manager found Insurance Plans matching the query
parameters specified by the Beneficiary Requestor as a result of a Search
Insurance Plan Request.

##### 2:3.YY2.4.2.2 Message Semantics

The Beneficiary Manager SHALL support the search response message as
defined at <{{site.data.fhir.path}}http.html#search> on the InsurancePlan, as
defined at <{{site.data.fhir.path}}insuranceplan.html>

The “content-type” of the response will depend upon the requested
response format indicated by the Beneficiary Requestor.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format
handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for handling guidance for Access
Denied.

###### 2:3.YY2.4.2.2.1 FHIR InsurancePlan Resource Constraints

A InsurancePlan Resource returned by the Beneficiary Manager SHALL be further constrained as described in the [FAIS InsurancePlan profile](StructureDefinition-IHE.FAIS.InsurancePlan.html).

##### 2:3.YY2.4.2.3 Expected Actions

The Beneficiary Requestor has received the response and continues with
its workflow.

#### 2:3.YY2.4.3 Read Insurance Plan Request Message

This message represents an HTTP GET from the Beneficiary Requestor to the
Beneficiary Manager and provides a mechanism for retrieving a single
InsurancePlan with a known resource id.

##### 2:3.YY2.4.3.1 Trigger Events

When the Beneficiary Requestor possesses the id of InsurancePlan (either
through query, database lookup, or other mechanism) for which it
requires additional or new information, it issues a Read Insurance Plan
Request.

##### 2:3.YY2.4.3.2 Message Semantics

A Beneficiary Requestor initiates a read interaction using HTTP GET as
defined at <{{site.data.fhir.path}}http.html#read> on the InsurancePlan
Resource. The target is formatted as:

```
GET [base]/InsurancePlan/[resourceId]
```

Where \[base\] is the URL of Beneficiary Manager.

The resourceId included in the request always represents the unique id
for the InsurancePlan within the scope of the URL. For example, while
http://example1.org/ihe/InsurancePlan/1 and
http://example2.com/ihe/InsurancePlan/1 both contain the same \[resourceId\],
they reference two different resource instances.

*Note: The use of "http" or "https" in URL does not override requirements
to use TLS for security purposes.*

A Beneficiary Manager SHALL support responding to a request for both
the JSON and the XML messaging formats as defined in FHIR. A Beneficiary
Requestor SHALL accept either the JSON or the XML messaging formats as
defined in FHIR. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for
this transaction.

##### 2:3.YY2.4.3.3 Expected Actions

The Beneficiary Manager SHALL process the request to retrieve the
InsurancePlan that matches the given resource id, and return a response as
defined at <{{site.data.fhir.path}}http.html#read> with the [Read Insurance Plan Response Message](#read-response) or an error code as
defined at <{{site.data.fhir.path}}http.html#Status-Codes>.

<a name="read-response"></a>

#### 2:3.YY2.4.4 Read Insurance Plan Response Message

The Beneficiary Manager’s response to a successful Read Insurance Plan
message SHALL be an **HTTP 200** (OK) Status code with a InsurancePlan
Resource, or an appropriate error status code, optionally with an
OperationOutcome Resource.

##### 2:3.YY2.4.4.1 Trigger Events

The Beneficiary Manager found a InsurancePlan Resource matching the
resource identifier specified by the Beneficiary Requestor.

##### 2:3.YY2.4.4.2 Message Semantics

The Read Insurance Plan Response is sent from the Beneficiary Manager to
the Beneficiary Requestor as a single InsurancePlan, as defined at
<{{site.data.fhir.path}}InsurancePlan.html> and constrained by the [FAIS InsurancePlan profile](StructureDefinition-IHE.FAIS.InsurancePlan.html).

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

##### 2:3.YY2.4.4.3 Expected Actions

The Beneficiary Requestor has received the response and continues with
its workflow.

### 2:3.YY1.5 CapabilityStatement Resource

Server implementing this transaction SHALL provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Client](CapabilityStatement-IHE.ToDo.client.html)
* Requirements CapabilityStatement for [Server](CapabilityStatement-IHE.ToDo.server.html)

### 2:3.YY2.6 Security Considerations

See [FAIS Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY2.6.1 Security Audit Considerations

''TODO: The security audit criteria ''

##### 2:3.YY2.6.1.1 Client Audit

''TODO: the specifics''

##### 2:3.YY2.6.1.2 Server Audit

''TODO: the specifics''
