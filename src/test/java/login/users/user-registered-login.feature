  Feature: User registers for an account
  # opuedo orquestar varios escenarios, y dar un resultado final segun el orden
    Scenario: Register and Login
      * call read("../register/register-users-reusable.feature@Create")
      * call read("login-user.feature@Login")
      And match token == "QpwL5tke4Pnpja7X4"
