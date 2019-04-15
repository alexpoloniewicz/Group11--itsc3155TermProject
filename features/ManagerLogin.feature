Feature: As a manager, I should be able to login and access the Dashboard page
  
  
Scenario: I should be able to login and view the dashboard page
Given I am on the home page
When I click the "Login" link
Then I should be on the "Managers" page
And I should see the "Username" field
And I should see the "Password" field