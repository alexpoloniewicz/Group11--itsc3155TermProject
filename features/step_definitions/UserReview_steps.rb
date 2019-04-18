When("I click the {string} button") do |button|
  click_button (button)
end

Then("I should see the {string} button") do |button_name|
  expect(page).to have_button(button_name)
end

Then("I shoud be on the {string} page") do |page_name|
   expect(page).to have_content(page_name)
end


When("I enter {string} in the Email address field") do |eMail|
  page.fill_in('Email Address', :with => eMail)
end

#When("I select {string} in the Selected the item you wish to review drop down") do |food_option|
#  select "pizza", from: "Selected the item you wish to review."
#end

#When("I select {string} in the Overall opinion drop down") do |string|
#  pending # Write code here that turns the phrase above into concrete actions
#end

#When("I select {string} in the Additional comment drop down") do |string|
#  pending # Write code here that turns the phrase above into concrete actions
#end

# Add 
#And I select "pizza" in the Selected the item you wish to review drop down
#And I select "like" in the Overall opinion drop down
#And I select "Flawless!" in the Additional comment drop down
# To lines 14, 15, and 16 respectively in UserReview.feature to enable this functionality.
#WARNING IT IS CURRENTLY BROKEN. Cucumber can not see/select options in the bootstrap dropdowns?
#Because the dropdowns are prepopulated with values, the funtionality can be tested, but not the way it should be.

When("I click on the {string} button") do |button|
  click_on (button)
end

Then("I should be on the home page") do
  visit root_path
end