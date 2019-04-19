Feature: As a manager, I should be able to sucessfully login using my credentials.
  
Scenario: Manager will arrive at homepage and be able to navigate to the Login page to successfully login to his or her account.
Given I am on the home page
When I click the "Login" link
Then I should be on the "Managers" page
And I should see the "Username" field
And I should see the "Password" field

When I enter "SoviMaster" into the Username field
And I enter "godchef" into the Password field
Then I click on the " Login " button
