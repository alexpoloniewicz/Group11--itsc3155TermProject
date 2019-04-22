Feature: As a user, I should be able to navigate the site and have it display the appropriate contents
  
Scenario: User will arrive at homepage and easily be able to navigate to various parts of the page.
Given I am on the home page
When I click the "Contact" link
Then I should be on the "Contact" page
When I click the "Break Bread" link
And I click the "Review" button
Then I should be on the "Write a Review" page
And I should see the "Email Address" field
When I click the "Break Bread" link
And I click the "Login" button
Then I should be on the "Managers" page
And I should see the "Username" field
And I should see the "Password" field