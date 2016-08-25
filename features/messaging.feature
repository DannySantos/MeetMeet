Feature: Messaging

  Background:
    Given a User has previously registered
      And they have signed in previously
      And there are some profiles

  Scenario: A user sends a message to another user
    Given they are on another user's profile
    When they click on the send message link
      And they fill out the message form
    Then the message is sent
    
  Scenario: A user views their inbox
    Given they have some messages
    When they visit their inbox
    Then they see their messages
      And they see their replies
