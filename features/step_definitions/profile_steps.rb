When(/^They click on another user's profile$/) do
  click_link "1LondonUK"
end

Given(/^they are on their edit profile page$/) do
  visit edit_profile_path(@user.profile.id)
end

When(/^they fill in the form with location details$/) do
  fill_in "profile[town_city]", with: "London"
  fill_in "profile[country]", with: "UK"
  click_on "Save Changes"
end

When(/^they fill in the form with biography details$/) do
  fill_in "profile[biography]", with: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quidem, est obcaecati. Sint libero voluptates quaerat officiis! Consequatur, quos accusantium illo sunt corrupti dolorum sit fugit nulla sapiente, dicta eos!"
end

Then(/^their profile should have their location$/) do
  expect(page).to have_content("Location: London, UK")
end

Then(/^They see the user's profile details$/) do
  expect(page).to have_content("profile_1")
  expect(page).to have_content("Go Fishing")
  expect(page).to have_content("London")
  expect(page).to have_content("UK")
end

Then(/^their profile should have their biography$/) do
  expect(page).to have_content("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quidem, est obcaecati. Sint libero voluptates quaerat officiis! Consequatur, quos accusantium illo sunt corrupti dolorum sit fugit nulla sapiente, dicta eos!")
end