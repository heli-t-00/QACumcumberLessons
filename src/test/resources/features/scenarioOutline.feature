Feature: Login Page with Scenario Outline

# data driven test, passing data through the scenario therefore use Scenario Outline:
#   add data in the WHEN use "< add Data here >"
  Scenario Outline: Login with invalid credentials
    Given the user is on Login Page
    When the user enters "<username>" and "<password>"
    And  the user clicks the login button
    Then the user should be not be logged in

    Examples:
      | username | password |
      | april    | 123456   |
      | chay     | 23456    |
      |mercator | 6903145   |
#    this will loop through three times so that it picks up the data
#  need to add Examples to pass the data through the scenario outline
#  if value is empty, it will be treated as NULL
