Feature: Planets Api Rest

  Background: Set urlBase
    * url urlBase

  @API
  Scenario: Validate name
    Given path '/api/planets/1/'
    When method GET
    Then status 200
    And match $ contains { name: 'Tatooine' }

  @API
  Scenario: validate field residents
    Given path '/api/planets/1/'
    When method GET
    Then status 200
    And match $ contains { residents: '#array' }

  @API
  Scenario: validate field films
    Given path '/api/planets/1/'
    When method GET
    Then status 200
    And match $ contains { films: '#array' }


