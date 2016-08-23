Feature: Messaging

  Background:
    Given a User has previously registered
      And they have signed in previously
      And there are some profiles

  @wip
  Scenario: A user sends a message to another user
    Given they are on another user's profile
    When they click on the send message link
      And they fill out the message form
    Then the message is sent