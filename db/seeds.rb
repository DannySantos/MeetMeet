
@profile_1 = Profile.find_or_create_by({
  username: "profile_1",
  town_city: "London",
  country: "UK"
})

@profile_2 = Profile.find_or_create_by({
  username: "profile_2",
  town_city: "Madrid",
  country: "Spain"
})

@profile_3 = Profile.find_or_create_by({
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
  profile_id: @profile_1.id,
  activity_id: @fishing.id,
  town_city: "London",
  country: "UK"
})

@request_2 = Request.find_or_create_by({
  profile_id: @profile_2.id,
  activity_id: @fishing.id,
  town_city: "London",
  country: "UK"
})

@request_3 = Request.find_or_create_by({
  profile_id: @profile_3.id,
  activity_id: @dancing.id,
  town_city: "Jaipur",
  country: "India"
})

@request_4 = Request.find_or_create_by({
  profile_id: @profile_1.id,
  activity_id: @dancing.id,
  town_city: "Jaipur",
  country: "India"
})

@request_5 = Request.find_or_create_by({
  profile_id: @profile_1.id,
  activity_id: @dancing.id,
  town_city: "Arras",
  country: "France"
})