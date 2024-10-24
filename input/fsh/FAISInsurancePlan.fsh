Profile: FAISInsurancePlan
Parent: InsurancePlan
Id: IHE.FAIS.InsurancePlan
Title: "FAIS InsurancePlan Profile"
Description: """
The FAIS Insurance Plan profile for creating Coverage resources to enroll beneficiaries.
"""

* modifierExtension 0..0
* implicitRules 0..0

* status 1..1
* type 1..1
* name 1..1 
* ownedBy 1..1
* administeredBy 1..1
* coverage 1..*
* plan 1..*

Instance: InsurancePlan-network
InstanceOf: SearchParameter
Title: "SearchParameter for InsurancePlan on the network element"
Usage: #definition
* description = "This SearchParameter enables finding InsurancePlans by network."
* name = "InsurancePlan_network"
* status = #active
* code = #network
* base = #InsurancePlan
* expression = "InsurancePlan.network"
* target[+] = #Organization
* type = #reference

Instance: InsurancePlan-coverageArea
InstanceOf: SearchParameter
Title: "SearchParameter for InsurancePlan on the coverageArea element"
Usage: #definition
* description = "This SearchParameter enables finding InsurancePlans by coverageArea."
* name = "InsurancePlan_coverageArea"
* status = #active
* code = #coverage-area
* base = #InsurancePlan
* expression = "InsurancePlan.coverageArea"
* target[+] = #Location
* type = #reference

Instance: InsurancePlan-benefitType
InstanceOf: SearchParameter
Title: "SearchParameter for InsurancePlan on the coverage.benefit.type element"
Usage: #definition
* description = "This SearchParameter enables finding InsurancePlans by benefity type."
* name = "InsurancePlan_benefitType"
* status = #active
* code = #benefit-type
* base = #InsurancePlan
* expression = "InsurancePlan.coverage.benefit.type"
* type = #token