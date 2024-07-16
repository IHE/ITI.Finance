This section corresponds to transaction [ITI-Y] of the IHE Technical Framework. Transaction [ITI-Y] is used by the Client and Server Actors. The go [ITI-Y] transaction is used to query and get back results.

### 2:3.YY.1 Scope

The Client [ITI-Y] transaction passes a go Request from a Client to a Server.

### 2:3.YY.2 Actors Roles

**Table: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Client](volume-1.html#client)    | Sends query to Server |
| [Server](volume-1.html#server) | Receives the query and responds |
{:.grid .table-striped}

### 2:3.YY.3 Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0]({{site.data.fhir.path}})

### 2:3.YY.4 Messages

<figure>
{%include domain-Y-seq.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Figure X.X.X.X-X: Go Interactions</p>
</figure>
<br clear="all">

#### 2:3.YY.4.1 go Query Message

This message uses the HTTP GET method on the target Server endpoint to convey the query parameters FHIR query.

##### 2:3.YY.4.1.1 Trigger Events

''TODO: define the triggers''

##### 2:3.YY.4.1.2 Message Semantics

''TODO: define the message -- usually with a StructureDefintion''

##### 2:3.YY.4.1.3 Expected Actions

''TODO: define expected actions''

#### 2:3.YY.4.2 Go Response Message

##### 2:3.YY.4.2.1 Trigger Events

''TODO: define the triggers''

##### 2:3.YY.4.2.2 Message Semantics

''TODO: define the message -- usually with a StructureDefintion''

##### 2:3.YY.4.2.3 Expected Actions

''TODO: define expected actions''

### 2:3.YY.5 CapabilityStatement Resource

Server implementing this transaction shall provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Client](CapabilityStatement-IHE.ToDo.client.html)
* Requirements CapabilityStatement for [Server](CapabilityStatement-IHE.ToDo.server.html)

### 2:3.YY.6 Security Considerations

See [MHD Security Considerations](volume-1.html#security-considerations)

#### 2:3.YY.6.1 Security Audit Considerations

''TODO: The security audit criteria ''

##### 2:3.YY.6.1.1 Client Audit

''TODO: the specifics''

##### 2:3.YY.6.1.2 Server Audit

''TODO: the specifics''
