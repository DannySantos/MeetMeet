Given(/^they are on the registration page$/) do
  visit root_path
  click_on "Register"
end

When(/^they fill in the registration form with valid details$/) do
  fill_in "Email", with: "test@test.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button "Sign up"
end

Then(/^a User should be created$/) do
  expect(User.first.email).to eq('test@test.com')
end