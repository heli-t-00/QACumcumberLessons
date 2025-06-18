Feature: Login Page

  Scenario: Login successful with valid credentials
    Given the user is on Login Page
    When the user enters valid username and password
    And  the user clicks the login button
    Then the user should be logged in successfully


  Scenario: Login with invalid credentials
    Given the user is on Login Page
    When the user enters invalid username and password
    And  the user clicks the login button
    Then the user should be not be logged in