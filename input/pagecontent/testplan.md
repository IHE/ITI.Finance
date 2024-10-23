<div markdown="1" class="stu-note">

This Test Plan page is a prototype. We expect the maturity of the content will improve over time.  For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

## Introduction

Overall test plan leverages the Profiles and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that would be adhered to by Actors claiming conformance to this implementation guide. Thus any applicable Resources that are known to have been published by an app or server MUST be conformant to these profiles as appropriate.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances. Some are conformant to the profiles. Other examples that either assist with the structure of the examples (e.g. Patient and Encounter) or are examples that  should be able to handle in various ways.

The tests below are described using [Gherkin](https://cucumber.io/docs/gherkin/) syntax.

## High-level Test Scope

### Query Insurance Plan [[ITI-121]](ITI-121.html)

The Beneficiary Requestor initiates a request to search for or read an insurance on the Beneficiary Manager.  The Beneficiary Manager responds to the request and returns an insurance plan to the Beneficiary Requestor.  See [Test Definition](Binary-FeatureITI121.html).

<p id="feature122" class="caption"><b>ITI-121 Query Insurance Plan Test</b></p>
```Gherkin
{%include_relative ITI-121.feature%}
```

### Enroll Beneficiary [[ITI-122]](ITI-122.html)

The Beneficiary Requestor initiates a request to enroll a beneficiary on the Beneficiary Manager.  The Beneficiary Manager responds to an enrollment request and returns an enrollment response to the Beneficiary Requestor.  See [Test Definition](Binary-FeatureITI122.html).

<p id="feature122" class="caption"><b>ITI-122 Enroll Beneficiary Test</b></p>
```Gherkin
{%include_relative ITI-122.feature%}
```

### Check Enrollment Status [[ITI-123]](ITI-123.html)

The Beneficiary Requestor initiates a query on an enrollment response on the Beneficiary Manager.  The Beneficiary Manager responds to the enrollment response request and returns an enrollment response to the Beneficiary Requestor.  See [Test Definition](Binary-FeatureITI123.html).

<p id="feature122" class="caption"><b>ITI-123 Check Enrollment Status Test</b></p>
```Gherkin
{%include_relative ITI-123.feature%}
```

### Check Coverage Eligibility [[ITI-124]](ITI-124.html)

The Coverage Requestor initiates a request to check coverage eligibility on the Claims Manager.  The Claims Manager responds to an eligibility request and returns a coverage eligibility response to the Coverage Requestor.  See [Test Definition](Binary-FeatureITI124.html).

<p id="feature122" class="caption"><b>ITI-124 Check Coverage Eligibility Test</b></p>
```Gherkin
{%include_relative ITI-124.feature%}
```

### Check Coverage Eligibility Status [[ITI-125]](ITI-125.html)

The Coverage Requestor initiates a request to retrieve a coverage eligibility response on the Claims Manager.  The Claims Manager returns a coverage eligibility response to the Coverage Requestor.  See [Test Definition](Binary-FeatureITI125.html).

<p id="feature122" class="caption"><b>ITI-125 Check Coverage Eligibility Status Test</b></p>
```Gherkin
{%include_relative ITI-125.feature%}
```

### Submit Claim [[ITI-126]](ITI-126.html)

The Claims Requestor initiates a request to submit a claim on the Claims Manager.  The Claims Manager responds to a claim submission and returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITI126.html).

<p id="feature122" class="caption"><b>ITI-126 Submit Claim Test</b></p>
```Gherkin
{%include_relative ITI-126.feature%}
```

### Cancel Claim [[ITI-127]](ITI-127.html)

The Claims Requestor initiates a request to cancel a claim on the Claims Manager.  The Claims Manager responds to a claim cancellation and returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITI127.html).

<p id="feature122" class="caption"><b>ITI-127 Cancel Claim Test</b></p>
```Gherkin
{%include_relative ITI-127.feature%}
```

### Re-process Claim [[ITI-128]](ITI-128.html)

The Claims Requestor initiates a request to re-process a claim on the Claims Manager.  The Claims Manager responds to a claim re-process request and returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITI128.html).

<p id="feature122" class="caption"><b>ITI-128 Re-process Claim Test</b></p>
```Gherkin
{%include_relative ITI-128.feature%}
```

### Track Claim [[ITI-129]](ITI-129.html)

The Claims Requestor initiates a request to retrieve a claim response on the Claims Manager.  The Claims Manager returns a claim response to the Claims Requestor.  See [Test Definition](Binary-FeatureITI129.html).

<p id="feature122" class="caption"><b>ITI-129 Track Claim Test</b></p>
```Gherkin
{%include_relative ITI-129.feature%}
```