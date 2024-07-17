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