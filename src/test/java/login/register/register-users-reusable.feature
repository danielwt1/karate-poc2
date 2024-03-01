@ignore
Feature: Reusable scnearios user
# La notacion se usa para la reusabilidad de los escenarios
@Create
  Scenario:
    Given url "https://reqres.in/api/register"
    And request { "email": "eve.holt@reqres.in","password": "pistol"}
    When method post
    Then status 200
    And def contactId = "eve.holt@reqres.in"