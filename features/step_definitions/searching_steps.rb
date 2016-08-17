Given(/^there are some profiles$/) do
  @profile_1 = Profile.create!({
    username: "profile_1",
    town_city: "London",
    country: "UK"
  })
  
  @profile_2 = Profile.create!({
    username: "profile_2",
    town_city: "Madrid",
    country: "Spain"
  })
  
  @profile_3 = Profile.create!({
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
    profile_id: @profile_1.id,
    activity_id: @fishing.id,
    town_city: "London",
    country: "UK"
  })
  
  @request_2 = Request.create!({
    profile_id: @profile_2.id,
    activity_id: @movie.id,
    town_city: "London",
    country: "UK"
  })
  
  @request_3 = Request.create!({
    profile_id: @profile_3.id,
    activity_id: @dancing.id,
    town_city: "Jaipur",
    country: "India"
  })
  
  @request_4 = Request.create!({
    profile_id: @profile_3.id,
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
  select "go fishing", from: "search[activity_id]"
  fill_in "search[town_city]", with: "London"
  fill_in "search[country]", with: "UK"
  click_on "Find People!"
end

Then(/^they see relevant results$/) do
  expect(page).to have_css("h3", text: @profile_1.username)
  expect(page).not_to have_css("h3", text: @profile_2.username)
  expect(page).to have_css("h3", text: @profile_3.username)
end