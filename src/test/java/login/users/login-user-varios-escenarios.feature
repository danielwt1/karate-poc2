Feature: Login user from the web page reqres
  Background:
  ## para tener cosas globales y ya sabe que el path es ese
    * url "https://reqres.in/api/"
    * path "login"
    #create variable
   ## * def body = {"email": "eve.holt@reqres.in","password": "cityslicka"}
    * request {email: '#(email)', password: '#(password)'} /*Para poner varios datos en un scenario varios casos*/

  Scenario Outline: Login User

    ##Given request request No necesito especifticar request porque ya lo hice en el background
    When method post

    Then status 200
    And match $.token == "QpwL5tke4Pnpja7X4"
    Examples:
      | email | password |
      |eve.holt@reqres.in | cityslicka |
      |eve.holt@reqres.in| cityslicka |
      |eve.holt@reqres.in| 123456 |
  Scenario Outline: Login Failed
    When method post
    Then status 400
    And match $.error == "user not found"
    Examples:
      | email | password |
      |any@mail | cityslicka |
      |evanother@mail| cityslicka |
      |eve.holt@gmail.in| 123456 |
