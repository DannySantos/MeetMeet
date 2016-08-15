Feature: Users

  Scenario: A User registers
    Given they are on the registration page
    When they fill in the registration form with valid details
    Then a User should be created

  Scenario: A User signs in
    Given a User has previously registered
      And they are on the log in page
    When they fill out the log in form with valid details
    Then they are logged in
