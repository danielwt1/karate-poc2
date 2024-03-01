@ignore
Feature: Login user from the web page reqres
@Login
## tittle
  Scenario: Login User
    ## Dado un supuesto
    Given url "https://reqres.in/"+"api/login"
    And request {"email": "eve.holt@reqres.in","password": "cityslicka"}
    ## describe evento o accion
    When method post
    ## Resultado esperado
    Then status 200
    And match $.token == "QpwL5tke4Pnpja7X4"
    And def token = $.token