<div markdown="1" class="stu-note">

This Test Plan page is a prototype. We expect the maturity of the content will improve over time.  For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

## Introduction

Overall test plan leverages the Profiles and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that would be adhered to by Actors claiming conformance to this implementation guide. Thus any applicable Resources that are known to have been published by an app or server MUST be conformant to these profiles as appropriate.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances. Some are conformant to the profiles. Other examples that either assist with the structure of the examples (e.g. Patient and Encounter) or are examples that  should be able to handle in various ways.

The tests below are described using [Gherkin](https://cucumber.io/docs/gherkin/) syntax.

## High-level Test Scope

### Query Insurance Plan [[ITI-YY2]](ITI-YY2.html)

The Beneficiary Requestor initiates a request to search for or read an insurance on the Beneficiary Manager.  The Beneficiary Manager responds to the request and returns an insurance plan to the Beneficiary Requestor.  See [Test Definition](Binary-FeatureITIYY2.html).

<p id="featureYY1" class="caption"><b>ITI-YY2 Query Insurance Plan Test</b></p>
```Gherkin
{%include_relative ITI-YY2.feature%}
```

### Enroll Beneficiary [[ITI-YY1]](ITI-YY1.html)

The Beneficiary Requestor initiates a request to enroll a beneficiary on the Beneficiary Manager.  The Beneficiary Manager responds to an enrollment request and returns an enrollment response to the Beneficiary Requestor.  See [Test Definition](Binary-FeatureITIYY1.html).

<p id="featureYY1" class="caption"><b>ITI-YY1 Enroll Beneficiary Test</b></p>
```Gherkin
{%include_relative ITI-YY1.feature%}
```

### Check Enrollment Status [[ITI-YY3]](ITI-YY3.html)

The Beneficiary Requestor initiates a query on an enrollment response on the Beneficiary Manager.  The Beneficiary Manager responds to the enrollment response request and returns an enrollment response to the Beneficiary Requestor.  See [Test Definition](Binary-FeatureITIYY3.html).

<p id="featureYY1" class="caption"><b>ITI-YY3 Check Enrollment Status Test</b></p>
```Gherkin
{%include_relative ITI-YY3.feature%}
```

### Check Coverage Eligibility [[ITI-YY4]](ITI-YY4.html)

The Coverage Requestor initiates a request to check coverage eligibility on the Claims Manager.  The Claims Manager responds to an eligibility request and returns a coverage eligibility response to the Coverage Requestor.  See [Test Definition](Binary-FeatureITIYY4.html).

<p id="featureYY1" class="caption"><b>ITI-YY4 Check Coverage Eligibility Test</b></p>
```Gherkin
{%include_relative ITI-YY4.feature%}
```

### Check Coverage Eligibility Status [[ITI-YY7]](ITI-YY7.html)

The Coverage Requestor initiates a request to retrieve a coverage eligibility response on the Claims Manager.  The Claims Manager returns a coverage eligibility response to the Coverage Requestor.  See [Test Definition](Binary-FeatureITIYY7.html).

<p id="featureYY1" class="caption"><b>ITI-YY7 Check Coverage Eligibility Status Test</b></p>
```Gherkin
{%include_relative ITI-YY7.feature%}
```

### Submit Claim [[ITI-YY5]](ITI-YY5.html)

The Claims Requestor initiates a request to submit a claim on the Claims Manager.  The Claims Manager responds to a claim submission and returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITIYY5.html).

<p id="featureYY1" class="caption"><b>ITI-YY5 Submit Claim Test</b></p>
```Gherkin
{%include_relative ITI-YY5.feature%}
```

### Cancel Claim [[ITI-YY8]](ITI-YY8.html)

The Claims Requestor initiates a request to cancel a claim on the Claims Manager.  The Claims Manager responds to a claim cancellation and returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITIYY8.html).

<p id="featureYY1" class="caption"><b>ITI-YY8 Cancel Claim Test</b></p>
```Gherkin
{%include_relative ITI-YY8.feature%}
```

### Re-process Claim [[ITI-YY9]](ITI-YY9.html)

The Claims Requestor initiates a request to re-process a claim on the Claims Manager.  The Claims Manager responds to a claim re-process request and returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITIYY9.html).

<p id="featureYY1" class="caption"><b>ITI-YY9 Re-process Claim Test</b></p>
```Gherkin
{%include_relative ITI-YY9.feature%}
```

### Track Claim [[ITI-YY6]](ITI-YY6.html)

The Claims Requestor initiates a request to retrieve a claim response on the Claims Manager.  The Claims Manager returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITIYY6.html).

<p id="featureYY1" class="caption"><b>ITI-YY6 Track Claim Test</b></p>
```Gherkin
{%include_relative ITI-YY6.feature%}
```