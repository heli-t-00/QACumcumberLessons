Feature: Login Functionality

  Scenario Outline: Invalid login attempts with incorrect credentials
    Given the user is on Login Page
    When the user enters "<username>" and "<password>"
    Then the system should display a login error message

    Examples:
      | username  | password    |
      | invalid1  | wrongPass   |
      | validUser | WrongPass   |
      | invalid2  | correctPass |
      |           |             |