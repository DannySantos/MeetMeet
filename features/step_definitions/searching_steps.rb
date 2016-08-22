Given(/^there are some profiles$/) do
  @user_1 = User.create!(
    email: "me@me.com",
    password: "pppppp",
    password_confirmation: "pppppp"
  )

  @user_2 = User.create!(
    email: "meat@me.com",
    password: "pppppp",
    password_confirmation: "pppppp"
  )

  @user_3 = User.create!(
    email: "meerkat@me.com",
    password: "pppppp",
    password_confirmation: "pppppp"
  )

  @user_1.profile.update({
    username: "profile_1",
    town_city: "London",
    country: "UK"
  })

  @user_2.profile.update({
    username: "profile_2",
    town_city: "Madrid",
    country: "Spain"
  })

  @user_3.profile.update({
    username: "profile_3",
    town_city: "London",
    country: "UK"
  })
end

Given(/^there are some activities$/) do
  @fishing = Activity.create!({
    name: "Go Fishing",
    category: "Outdoors"
  })
  
  @movie = Activity.create!({
    name: "See a Movie",
    category: "Film and Television"
  })
  
  @dancing = Activity.create!({
    name: "Learn to Dance",
    category: "Sports and Physical"
  })
end

Given(/^there are some requests$/) do
  @request_1 = Request.create!({
    profile_id: @user_1.profile.id,
    activity_id: @fishing.id,
    town_city: "London",
    country: "UK"
  })
  
  @request_2 = Request.create!({
    profile_id: @user_2.profile.id,
    activity_id: @movie.id,
    town_city: "London",
    country: "UK"
  })
  
  @request_3 = Request.create!({
    profile_id: @user_3.profile.id,
    activity_id: @dancing.id,
    town_city: "Jaipur",
    country: "India"
  })
  
  @request_4 = Request.create!({
    profile_id: @user_3.profile.id,
    activity_id: @fishing.id,
    town_city: "London",
    country: "UK"
  })
end

Given(/^they are on the homepage$/) do
  visit root_path
end

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