Feature: Reviews

  Scenario: A user leaves a review on another user's profile
    Given a User has previously registered
      And they have signed in previously
      And there are some profiles
      And they are on another user's profile
      And the sphinx index has been updated
    When they fill in the review form
    Then their review appears on the profile