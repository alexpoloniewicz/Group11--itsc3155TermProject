Given("I am on the home page") do
  visit root_path
end

When("I click the {string} link") do |page_name|
  click_link page_name
end

Then("I should be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should see the {string} field") do |field_name|
  expect(page).to have_field(field_name)
end

When("I enter {string} into the Username field") do |username|
    fill_in('Username', :with => 'username')
end

When("I enter {string} into the Password field") do |password|
    fill_in('Password', :with => 'password')
end

Then("I should be on the data page") do
  expect(page).to have_content("Dashboard")
end