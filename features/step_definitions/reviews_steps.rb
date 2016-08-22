Given(/^they are on another user's profile$/) do
  visit profile_path @user_1.profile_id
end

When(/^they fill in the review form$/) do
  select 5, from: "review[rating]"
  fill_in "review[body]", with: "Port-salut rubber cheese monterey jack. Cheese strings cut the cheese queso cheese triangles cottage cheese everyone loves hard cheese squirty cheese. Taleggio halloumi queso the big cheese danish fontina halloumi say cheese halloumi. Taleggio cheddar fromage frais when the cheese comes out everybody's happy macaroni cheese red leicester jarlsberg dolcelatte. Cheese slices."
  click_on "Submit Review"
end

Then(/^their review appears on the profile$/) do
  expect(page).to have_content("Port-salut rubber cheese monterey jack. Cheese strings cut the cheese queso cheese triangles cottage cheese everyone loves hard cheese squirty cheese. Taleggio halloumi queso the big cheese danish fontina halloumi say cheese halloumi. Taleggio cheddar fromage frais when the cheese comes out everybody's happy macaroni cheese red leicester jarlsberg dolcelatte. Cheese slices.")
end