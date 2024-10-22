// From https://www.hl7.org/fhir/extensions/StructureDefinition-request-statusReason.profile.json.html
// Until it can be modified to include additional context.
Extension: StatusReason
Id: request-statusReason
Title: "Request Status Reason"
Description: "Captures the reason for the current state of the resource."

* ^context[+].type = #element
* ^context[=].expression = "Claim"
* ^context[+].type = #element
* ^context[=].expression = "EnrollmentRequest"
* ^context[+].type = #element
* ^context[=].expression = "CoverageEligibilityRequest"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1