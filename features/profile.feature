Feature: Profile

  @sphinx
  Scenario: A user views another user's profile from a search
    Given a User has previously registered
      And they have signed in previously
      And there are some profiles
      And there are some activities
      And there are some requests
      And they are on the homepage
      And the sphinx index has been updated
      And they search by activity and location
    When They click on another user's profile
    Then They see the user's profile details
    
  Scenario: A user adds their location to their profile
    Given a User has previously registered
      And they have signed in previously
      And they are on their edit profile page
    When they fill in the form with location details
    Then their profile should have their location