Given(/^they are on the registration page$/) do
  visit root_path
  click_on "Register"
end

Given(/^they are on the log in page$/) do
  visit new_user_session_path
end

When(/^they sign out$/) do
  click_on "Sign out"
end

When(/^they fill in the registration form with valid details$/) do
  fill_in "Email", with: "test@test.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button "Sign up"
end

When(/^they fill out the log in form with valid details$/) do
  fill_in "Email", with: "test@test.com"
  fill_in "Password", with: "password"
  click_button "Log in"
end

Then(/^they are logged in$/) do
  expect(page).to have_content("Signed in successfully.")
end

Then(/^a User should be created$/) do
  expect(User.first.email).to eq('test@test.com')
end

Then(/^they should see a farewell message$/) do
  "Signed out successfully."
end
