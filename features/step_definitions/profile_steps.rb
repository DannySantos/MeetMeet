Given(/^they are on their edit profile page$/) do
  visit edit_profile_path(@user.profile.id)
end

Given(/^they are on the new request page$/) do
  visit new_request_path
end

When(/^they fill in the form with location details$/) do
  fill_in "profile[town_city]", with: "London"
  fill_in "profile[country]", with: "UK"
  click_on "Save Changes"
end

When(/^they fill in the form with biography details$/) do
  fill_in "profile[biography]", with: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quidem, est obcaecati. Sint libero voluptates quaerat officiis! Consequatur, quos accusantium illo sunt corrupti dolorum sit fugit nulla sapiente, dicta eos!"
end

When(/^they fill in the form with image URL details$/) do
  fill_in "profile[image_url]", with: "image.jpg"
  click_on "Save Changes"
end

When(/^they fill in the form with username details$/) do
  fill_in "profile[username]", with: "Danny"
  click_on "Save Changes"
end

When(/^they fill in the form with cover photo details$/) do
  fill_in "profile[cover_image_url]", with: "cover.jpg"
  click_on "Save Changes"
end

When(/^they fill in the form with request details$/) do
  select "go fishing", from: "request[activity_id]"
  fill_in "request[town_city]", with: "Kuala Lumpur"
  fill_in "request[country]", with: "Malaysia"
  click_on "Add Request"
end

Then(/^they should see their new request$/) do
  expect(page).to have_content("Go Fishing in Kuala Lumpur, Malaysia")
end

Then(/^their profile should have their cover photo$/) do
  expect(page).to have_css('.cover[style="background-image: url(cover.jpg)"]')
end

Then(/^their profile should have their username$/) do
  expect(page).to have_content("Danny")
end

Then(/^their profile should have their image$/) do
  expect(page).to have_css('img[src="/images/image.jpg"]')
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