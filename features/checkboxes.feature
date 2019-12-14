Feature: Heroku tests pasados a cucumber

  Scenario: Checkboxes
    Given I go to "https://the-internet.herokuapp.com" page
    When I click the "Checkboxes" link
    And I check the first box
    And I uncheck the second box
    
    Then I should see the message "Secure Area" 