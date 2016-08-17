When(/^They click on another user's profile$/) do
  click_link "profile_1"
end

Then(/^They see the user's profile details$/) do
  expect(page).to have_content("profile_1")
  expect(page).to have_content("Go Fishing")
  expect(page).to have_content("London")
  expect(page).to have_content("UK")
end