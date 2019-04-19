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

When("I click on the {string} button") do |button|
  click_on (button)
end

Then("I should be on the home page") do
  visit root_path
end