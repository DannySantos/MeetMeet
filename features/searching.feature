Feature: Searching
  
  @sphinx
  Scenario: A visitor searches by activity and location
    Given there are some profiles
      And there are some activities
      And there are some requests
      And they are on the homepage
      And the sphinx index has been updated
    When they search by activity and location
    Then they see relevant results