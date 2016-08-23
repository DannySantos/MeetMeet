Given(/^the sphinx index has been updated$/) do
  ThinkingSphinx::Test.start index: true
end

When(/^they search by activity and location$/) do
  select "go fishing", from: "search[activity_id]", visible: false
  click_link "town_city"
  fill_in "search[town_city]", with: "London\n"
  click_link "country"
  fill_in "search[country]", with: "UK\n"
  click_on "Find People!"
end

Then(/^they see relevant results$/) do
  expect(page).to have_css("h3", text: @request_1.id)
  expect(page).not_to have_css("h3", text: @request_2.id)
  expect(page).not_to have_css("h3", text: @request_3.id)
  expect(page).to have_css("h3", text: @request_4.id)
end