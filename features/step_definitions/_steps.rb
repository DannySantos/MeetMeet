Given(/^they have signed in previously$/) do
  step "they are on the log in page"
  step "they fill out the log in form with valid details"
end

Given(/^a User has previously registered$/) do
  @user = User.create!(
    {
      email: "test@test.com",
      password: "password",
      password_confirmation: "password",
      confirmed_at: Date.new
    }
  )
end

Given(/^they are on another user's profile$/) do
  visit profile_path @user_1.profile_id
end

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

When(/^They click on another user's profile$/) do
  click_link @request_1.profile.username
end
