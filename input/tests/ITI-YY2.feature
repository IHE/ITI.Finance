Feature: Test ITI-YY2 Transaction: Query Insurance Plan

  Background:
    * url 'http://localhost/fhir
    * def planresource read('InsurancePlan-ex-insuranceplan-1.json')

  Rule: Search Insurance Plan Request

    Scenario: Search for an Insurance Plan

      Given path 'InsurancePlan'
      And request { type: 'medical' }
      When method get
      Then status 200
      And match $.resourceType = 'Bundle'
      And match $.type = 'searchset'
      And match $.entry contains planresource

  Rule: Read Insurance Plan Request

    Scenario: Request an Insurance Plan resource 

      Given path 'InsurancePlan/ex-insuranceplan-1'
      When method get
      Then status 200
      And match $.resourceType == 'Bundle'
      And match $.type == "searchset"
      And match $.entry contains planresource
  