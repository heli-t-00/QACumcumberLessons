# AFTERNOON TASK: Cucumber BDD Parametrization
Feature: User registration functionality of a web application

#  As a new user:
#  I want to register for an account on the web application
#  So that I can access member-only features
Scenario Outline: Successful user registration with valid credentials
Given the user is on registration page
# actions
When the user enters user information "<name>" and "<email> and "<password>"
  Examples:
    | name    | email           | password |
    | Alpha   | betty@test.com  | 123544   |
    | Charlee | dan@test.com    | 200903   |
    | Elsa    | winter@test.com | 34409    |

  And  the user click register button

# outcome
Then the confirmation message appears saying "Registration successful"
And the user is redirected to Welcome page
And new member only account should be created in the system

