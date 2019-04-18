Feature: As a user, I should be able to leave a review.
  
Scenario: User will arrive at homepage and easily be able to navigate to the review button and place review for the food that he/she desires.
Given I am on the home page
When I click the "Review" button
Then I should be on the "Review" page
And I should see the "Email Address" field
And I should see the "Selected the item you wish to review." field
And I should see the "Overall opinion" field
And I should see the "Additional comment" field
And I should see the "submit" button
    
Given I am on the Review page
When I enter "Kenneth@coolmail.com" in the Email address field
And I select "pizza" in the Selected the item you wish to review drop down
And I select "like" in the Overall opinion drop down
And I select "Flawless!" in the Additional comment drop down
And I click on the "submit" button
Then I should be on the home page