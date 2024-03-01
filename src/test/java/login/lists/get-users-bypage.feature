Feature: Get the list of user per page
  Background:
    * url 'https://reqres.in/api/users?page='+ page


# hacer dinamica segun unos casos base en el json puedo poner valdiaciones o omitir, o colocar en el JSON que esopero un #number o #string
  Scenario Outline: Get list of Users
    * def json_response = read(jsonfile)



    When method GET
    Then status 200

    And match $ == json_response


    Examples:
      | page | jsonfile|
      | 1    | list1Users.json |
      | 2    | list2Users.json |
      | 3    | list3Users.json |


