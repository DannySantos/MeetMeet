User.destroy_all

@danny = User.create!(
  email: "danny@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
)

@lorin = User.create!(
  email: "lorin@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
)

@tamlyn = User.create!(
  email: "tamlyn@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
)

@dafin = User.create!(
  email: "dafin@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
)

@finn = User.create!(
  email: "finn@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
)

@zareh = User.create!(
  email: "zareh@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
)

@aga = User.create!(
  email: "aga@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
)







@danny.profile.update({
  username: "Danny",
  town_city: "Leeds",
  country: "UK",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/13221521_10154218242649521_858764480537345491_n.jpg?oh=0e931681496f1f4a2bb089c23309a891&oe=58122A27"
})

@lorin.profile.update({
  username: "Lorin",
  town_city: "Arizona",
  country: "USA",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/40223_417626366667_7939549_n.jpg?oh=1b7f095fef161b412510a44cb090eba1&oe=5810DE04"
})

@tamlyn.profile.update({
  username: "Tamlyn",
  town_city: "Toowoomba",
  country: "Australia",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/t31.0-8/10548227_1511296389116588_8956871852082766858_o.jpg"
})

@dafin.profile.update({
  username: "Dafin",
  town_city: "London",
  country: "UK",
  image_url: "https://avatars3.githubusercontent.com/u/2958639?v=3&s=400"
})

@finn.profile.update({
  username: "Finn",
  town_city: "Llaneli",
  country: "Wales",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/1229903_10151901640200844_1776194532_n.jpg?oh=95ab76e64b579cc450669d8ee078cef2&oe=5841BAE0"
})

@zareh.profile.update({
  username: "Zareh",
  town_city: "Cambridge",
  country: "UK",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/10848053_1562547573990663_8711429173938075156_n.jpg?oh=ecddc3885a13f6123abf1a9843e9ae00&oe=58494F31"
})

@aga.profile.update({
  username: "Aga",
  town_city: "Krakow",
  country: "Poland",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/11407081_1145579952125458_8781056563014680658_n.jpg?oh=0a6b04526ad756753d6446969cf1ee94&oe=583F2C4F"
})






@fishing = Activity.find_or_create_by({
  name: "Go fishing",
  category: "Outdoors"
})

@movie = Activity.find_or_create_by({
  name: "See a movie",
  category: "Film and Television"
})

@dancing = Activity.find_or_create_by({
  name: "Learn to dance",
  category: "Sports and Physical"
})

@football = Activity.find_or_create_by({
  name: "See a football match",
  category: "Sports and Physical"
})

@code = Activity.find_or_create_by({
  name: "Code",
  category: "Digital"
})

@play_football = Activity.find_or_create_by({
  name: "Play football",
  category: "Sports and Physical"
})

@caving = Activity.find_or_create_by({
  name: "Go caving",
  category: "Outdoors"
})

@climbing = Activity.find_or_create_by({
  name: "Go climbing",
  category: "Film and Television"
})

@cooking = Activity.find_or_create_by({
  name: "Learn to cook",
  category: "Skills and Learning"
})



######### Danny

Request.find_or_create_by({
  profile_id: @danny.profile_id,
  activity_id: @fishing.id,
  town_city: "Shoreditch",
  country: "UK"
})

Request.find_or_create_by({
  profile_id: @danny.profile_id,
  activity_id: @dancing.id,
  town_city: "Jaipur",
  country: "India"
})

Request.find_or_create_by({
  profile_id: @danny.profile_id,
  activity_id: @dancing.id,
  town_city: "Arras",
  country: "France"
})

Request.find_or_create_by({
  profile_id: @danny.profile_id,
  activity_id: @football.id,
  town_city: "Barcelona",
  country: "Spain"
})

Request.find_or_create_by({
  profile_id: @danny.profile_id,
  activity_id: @code.id,
  town_city: "Hoddesdon",
  country: "UK"
})


######### Lorin

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "London",
  country: "UK"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Hoddesdon",
  country: "UK"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Bangkok",
  country: "Thailand"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Toronto",
  country: "Canada"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "New York",
  country: "USA"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Baghdad",
  country: "Iraq"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Uluru",
  country: "Australia"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Surgut",
  country: "Russia"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Windhoek",
  country: "Namibia"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Dakar",
  country: "Senegal"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Rio",
  country: "Brazil"
})

Request.find_or_create_by({
  profile_id: @lorin.profile_id,
  activity_id: @code.id,
  town_city: "Santiago",
  country: "Chile"
})


######### Tamlyn

Request.find_or_create_by({
  profile_id: @tamlyn.profile_id,
  activity_id: @dancing.id,
  town_city: "Arras",
  country: "France"
})

Request.find_or_create_by({
  profile_id: @tamlyn.profile_id,
  activity_id: @football.id,
  town_city: "Barcelona",
  country: "Spain"
})

Request.find_or_create_by({
  profile_id: @tamlyn.profile_id,
  activity_id: @code.id,
  town_city: "Hoddesdon",
  country: "UK"
})


######### Zareh

Request.find_or_create_by({
  profile_id: @zareh.profile_id,
  activity_id: @dancing.id,
  town_city: "Arras",
  country: "France"
})

Request.find_or_create_by({
  profile_id: @zareh.profile_id,
  activity_id: @football.id,
  town_city: "Barcelona",
  country: "Spain"
})

Request.find_or_create_by({
  profile_id: @zareh.profile_id,
  activity_id: @code.id,
  town_city: "Hoddesdon",
  country: "UK"
})









@message_1 = Message.find_or_create_by(
  sender_id: @lorin.id,  
  receiver_id: @danny.id,  
  body: "Danny man!", 
  replied_to_id: nil
)

@message_2 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @lorin.id,  
  body: "Hey man, how's it going?",
  replied_to_id: @message_1.id
)

@message_3 = Message.find_or_create_by(
  sender_id: @lorin.id,  
  receiver_id: @danny.id,  
  body: "Well I just accidentally burned down the mansion so that was trouble.",
  replied_to_id: @message_2.id
)

@message_4 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @lorin.id,  
  body: "Shit, really?! Are you ok??",
  replied_to_id: @message_3.id
)

@message_5 = Message.find_or_create_by(
  sender_id: @lorin.id,  
  receiver_id: @danny.id,  
  body: "I felt a little bummed out at first but then I was like wait... code doesn't care that I burned down the mansion!",
  replied_to_id: @message_4.id
)

@message_6 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @lorin.id,  
  body: "Yeah, good point.",
  replied_to_id: @message_5.id
)




@message_7 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "FYI I just sent one of my drones to your house",
  replied_to_id: nil
)

@message_8 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @tamlyn.id,  
  body: "...one of the good ones or one of the weaponised ones?",
  replied_to_id: @message_7.id
)

@message_9 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "The good ones",
  replied_to_id: @message_8.id
)

@message_10 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "...but it was also weaponized",
  replied_to_id: @message_9.id
)

@message_11 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "I don't THINK it will attack though",
  replied_to_id: @message_10.id
)




@message_12 = Message.find_or_create_by(
  sender_id: @zareh.id,  
  receiver_id: @danny.id,  
  body: "Do you want to go line dancing?",
  replied_to_id: nil
)

@message_13 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @zareh.id,  
  body: "Not really my cup of tea mate, but thanks",
  replied_to_id: @message_12.id
)




@message_14 = Message.find_or_create_by(
  sender_id: @finn.id,  
  receiver_id: @danny.id,  
  body: "Do you want a slice of my big meaty one?",
  replied_to_id: nil
)

@message_15 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @finn.id,  
  body: "Mate, it's 6am...",
  replied_to_id: @message_14.id
)




@message_16 = Message.find_or_create_by(
  sender_id: @aga.id,  
  receiver_id: @danny.id,  
  body: "Guvno!",
  replied_to_id: nil
)

@message_17 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @aga.id,  
  body: "Odbyt!",
  replied_to_id: @message_16.id
)

@message_18 = Message.find_or_create_by(
  sender_id: @aga.id,  
  receiver_id: @danny.id,  
  body: "Siurek!",
  replied_to_id: @message_17.id
)






