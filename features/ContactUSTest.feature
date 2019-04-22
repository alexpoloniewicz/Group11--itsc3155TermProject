Feature: As a user, I should be able to havigate to the contact us page and be able to see the appropriate content.
  
Scenario: User will arrive at homepage and navigate to the contact us page where they will be able to fill in a form and view a map.
Given I am on the home page
When I click the "Contact" link
Then I should be on the "Contact" page
And I should see the "First Name" field
And I should see the "Last Name" field
And I should see the "Email Address" field
And I should see the "Enter your message for us here. We will get back to you within 2-5 business days." field
And I should see the "Submit" button