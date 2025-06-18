Feature: Login Page with Background

  Background:
    Given the user is on Login Page
    And the user enters their credentials
#use Background to avoid duplication if the SAME background applies for MULTIPLE scenarios
#  Common pre-conditions that runs for every feature file
#  DRY Don't Repeat Yourself
  Scenario: Successful valid credentials

    When the user enters valid username and password
    And  the user clicks the login button
    Then the user should be logged in successfully


  Scenario: Unsuccessful login with invalid credentials

    When the user enters invalid username and password
    And  the user clicks the login button
    Then the user should be not be logged in
