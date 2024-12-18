
The Finance and Insurance Service (FAIS) stores, categorizes, and facilitates the administration of centralized claims and finance
data for patient care. The service receives claims/financial data from Point of Service (POS)
applications (including financing applications acting as a point of service interface outside of other POS systems) and
curates the management of them.

<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>

### Organization of This Guide

This guide is organized into the following sections:

1. Volume 1:
   1. [Introduction](volume-1.html)
   1. [Actors, Transactions, and Content](volume-1.html#actors-and-transactions)
   1. [Actor Options](volume-1.html#actor-options)
   1. [Required Actor Groupings](volume-1.html#required-groupings)
   1. [Overview](volume-1.html#overview)
   1. [Security Considerations](volume-1.html#security-considerations)
   1. [Cross Profile Considerations](volume-1.html#other-grouping)
1. Volume 2: Transaction Detail
   1. [Query Insurance Plan [ITI-121]](ITI-121.html)
   1. [Enroll Beneficiary [ITI-122]](ITI-122.html)
   1. [Check Enrollment Status [ITI-123]](ITI-123.html)
   1. [Check Coverage Eligibility [ITI-124]](ITI-124.html)
   1. [Check Coverage Eligibility Status [ITI-125]](ITI-125.html)
   1. [Submit Claim [ITI-126]](ITI-126.html)
   1. [Cancel Claim [ITI-127]](ITI-127.html)
   1. [Re-process Claim [ITI-128]](ITI-128.html)
   1. [Track Claim [ITI-129]](ITI-129.html)
1. Other
   1. [Changes to Other IHE Specifications](other.html)
   1. [Download and Analysis](download.html)
   1. [Test Plan](testplan.html)

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: SHALL, SHOULD, and MAY according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of ```mustSupport``` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor SHALL populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit.
The consuming actors SHOULD handle these elements being populated or being absent/empty.
Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.
