Feature: Users

  Scenario: A User registers
    Given they are on the registration page
    When they fill in the registration form with valid details
    Then a User should be created
