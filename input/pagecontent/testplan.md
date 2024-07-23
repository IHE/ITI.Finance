<div markdown="1" class="stu-note">

This Test Plan page is a prototype.   We expect the maturity of the content will improve over time.  For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

## Introduction

Overall test plan leverages the Profiles, and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that would be adhered to by Actors claiming conformance to this implementation guide. Thus any applicable Resources that are known to have been published by an app or server MUST be conformant to these profiles as appropriate.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances. Some are conformant to the profiles. Other examples that either assist with the structure of the examples (e.g. Patient and Encounter) or are examples that  should be able to handle in various ways.

The tests below are described using [Gherkin](https://cucumber.io/docs/gherkin/) syntax.

## High-level Test Scope

### Enroll Beneficiary [[ITI-YY1]](ITI-YY1.html)

The Beneficiary Requestor initiates a request to enroll a beneficiary on the Beneficiary Manager.  The Beneficiary Manager responds to an enrollment request and returns an enrollment response to the Beneficiary Requestor.

<p id="featureYY1" class="caption"><b>ITI-YY1 Enroll Beneficiary Test</b></p>
```
{%include_relative ITI-YY1.feature%}
```




