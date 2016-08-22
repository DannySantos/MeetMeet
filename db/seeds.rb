User.destroy_all

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

@fishing = Activity.find_or_create_by({
  name: "Go Fishing",
  category: "Outdoors"
})

@movie = Activity.find_or_create_by({
  name: "See a Movie",
  category: "Film and Television"
})

@dancing = Activity.find_or_create_by({
  name: "Learn to Dance",
  category: "Sports and Physical"
})

@request_1 = Request.find_or_create_by({
  profile_id: @user_1.profile_id,
  activity_id: @fishing.id,
  town_city: "London",
  country: "UK"
})

@request_2 = Request.find_or_create_by({
  profile_id: @user_2.profile_id,
  activity_id: @fishing.id,
  town_city: "London",
  country: "UK"
})

@request_3 = Request.find_or_create_by({
  profile_id: @user_3.profile_id,
  activity_id: @dancing.id,
  town_city: "Jaipur",
  country: "India"
})

@request_4 = Request.find_or_create_by({
  profile_id: @user_1.profile_id,
  activity_id: @dancing.id,
  town_city: "Jaipur",
  country: "India"
})

@request_5 = Request.find_or_create_by({
  profile_id: @user_1.profile_id,
  activity_id: @dancing.id,
  town_city: "Arras",
  country: "France"
  })
