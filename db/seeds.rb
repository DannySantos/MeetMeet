User.destroy_all
Request.destroy_all
Review.destroy_all
Profile.destroy_all
Activity.destroy_all
Message.destroy_all


@danny = User.new(
  email: "danny@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
  confirmed_at: DateTime.now
)

@danny.skip_confirmation!
@danny.save

@lorin = User.new(
  email: "lorin@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
  confirmed_at: DateTime.now
)

@lorin.skip_confirmation!
@lorin.save

@tamlyn = User.new(
  email: "tamlyn@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
  confirmed_at: DateTime.now
)

@tamlyn.skip_confirmation!
@tamlyn.save

@dafin = User.new(
  email: "dafin@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
  confirmed_at: DateTime.now
)

@dafin.skip_confirmation!
@dafin.save

@finn = User.new(
  email: "finn@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
  confirmed_at: DateTime.now
)

@finn.skip_confirmation!
@finn.save

@zareh = User.new(
  email: "zareh@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
  confirmed_at: DateTime.now
)

@zareh.skip_confirmation!
@zareh.save

@aga = User.new(
  email: "aga@me.com",
  password: "pppppp",
  password_confirmation: "pppppp",
  confirmed_at: DateTime.now
)

@aga.skip_confirmation!
@aga.save







@danny.profile.update({
  username: "Danny",
  town_city: "Leeds",
  country: "UK",
  image_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAQ_AAAAJDRkMWZiM2RlLWVhMWYtNGY5OS05MjgxLTU2ZGQ4NTEzYmY1Mg.jpg",
  cover_image_url: "https://scontent-lhr3-1.xx.fbcdn.net/t31.0-8/1658606_10152248437619521_968206448_o.jpg",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
})

@lorin.profile.update({
  username: "Lorin",
  town_city: "Arizona",
  country: "USA",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/40223_417626366667_7939549_n.jpg?oh=1b7f095fef161b412510a44cb090eba1&oe=5810DE04",
  cover_image_url: "http://www.incimages.com/uploaded_files/image/1940x900/software-computer-code-1940x900_35196.jpg",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
})

@tamlyn.profile.update({
  username: "Tamlyn",
  town_city: "Toowoomba",
  country: "Australia",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/t31.0-8/10548227_1511296389116588_8956871852082766858_o.jpg",
  cover_image_url: "http://honisoit.com/wp-content/uploads/2013/08/729592-australian-protectionist-party.jpg",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
})

@dafin.profile.update({
  username: "Dafin",
  town_city: "London",
  country: "UK",
  image_url: "https://avatars3.githubusercontent.com/u/2958639?v=3&s=400",
  cover_image_url: "https://s-media-cache-ak0.pinimg.com/736x/07/07/69/0707695a30645c67356dcdefd6c96aa6.jpg",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
})

@finn.profile.update({
  username: "Finn",
  town_city: "Llaneli",
  country: "Wales",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/1229903_10151901640200844_1776194532_n.jpg?oh=95ab76e64b579cc450669d8ee078cef2&oe=5841BAE0",
  cover_image_url: "http://normferns.com/blog/wp-content/uploads/2015/02/shaun-the-black-sheep.png",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
})

@zareh.profile.update({
  username: "Zareh",
  town_city: "Cambridge",
  country: "UK",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/10848053_1562547573990663_8711429173938075156_n.jpg?oh=ecddc3885a13f6123abf1a9843e9ae00&oe=58494F31",
  cover_image_url: "http://1.bp.blogspot.com/-bqY0Ll9F8HA/UlQ31vnZPzI/AAAAAAAAHNA/FR0q2QzwD-A/s1600/Texas%20line%20dance.jpg",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
})

@aga.profile.update({
  username: "Aga",
  town_city: "Krakow",
  country: "Poland",
  image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/11407081_1145579952125458_8781056563014680658_n.jpg?oh=0a6b04526ad756753d6446969cf1ee94&oe=583F2C4F",
  cover_image_url: "http://cdn-media-1.lifehack.org/wp-content/files/2013/09/jwj-slackline-0041.jpg",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
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


######### Aga

Request.find_or_create_by({
  profile_id: @aga.profile_id,
  activity_id: @code.id,
  town_city: "Arras",
  country: "France"
})

Request.find_or_create_by({
  profile_id: @aga.profile_id,
  activity_id: @code.id,
  town_city: "Cardiff",
  country: "Wales"
})

Request.find_or_create_by({
  profile_id: @aga.profile_id,
  activity_id: @code.id,
  town_city: "Glasgow",
  country: "UK"
})


######### Finn

Request.find_or_create_by({
  profile_id: @finn.profile_id,
  activity_id: @code.id,
  town_city: "Aberystwyth",
  country: "Wales"
})

Request.find_or_create_by({
  profile_id: @finn.profile_id,
  activity_id: @code.id,
  town_city: "Cardigan",
  country: "Wales"
})

Request.find_or_create_by({
  profile_id: @finn.profile_id,
  activity_id: @code.id,
  town_city: "Methyr Tydfil",
  country: "Wales"
})


######### Daf

Request.find_or_create_by({
  profile_id: @dafin.profile_id,
  activity_id: @code.id,
  town_city: "Peterborough",
  country: "UK"
})

Request.find_or_create_by({
  profile_id: @dafin.profile_id,
  activity_id: @code.id,
  town_city: "Norwich",
  country: "UK"
})

Request.find_or_create_by({
  profile_id: @dafin.profile_id,
  activity_id: @code.id,
  town_city: "Sheffield",
  country: "UK"
})










@message_7 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "Australia rulez!",
  replied_to_id: nil
)

@message_8 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @tamlyn.id,  
  body: "Here we go again...",
  replied_to_id: @message_7.id
)

@message_9 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "You know what's amazing about Australia?",
  replied_to_id: @message_8.id
)

@message_10 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "Danny?",
  replied_to_id: @message_9.id
)

@message_11 = Message.find_or_create_by(
  sender_id: @tamlyn.id,  
  receiver_id: @danny.id,  
  body: "It's everything.",
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

@message_19 = Message.find_or_create_by(
  sender_id: @danny.id,  
  receiver_id: @aga.id,  
  body: "Mówię dobrze po polsku",
  replied_to_id: @message_17.id
)


# Lorin

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






Review.find_or_create_by(
  rating: 5,
  title: "Awesome guy!",
  body: "Literally the best guy I've ever met ever.",
  reviewed_id: @danny.id,
  reviewer_id: @lorin.id
)

Review.find_or_create_by(
  rating: 5,
  title: "Amaaaaaazing guy!",
  body: "I honestly don't know what the world would do without him. A true visionary.",
  reviewed_id: @danny.id,
  reviewer_id: @dafin.id
)

Review.find_or_create_by(
  rating: 5,
  title: "What a dancer!",
  body: "In all my years of line dancing I've never seen anything quite so elegant. 10/5 stars.",
  reviewed_id: @danny.id,
  reviewer_id: @zareh.id
)

Review.find_or_create_by(
  rating: 5,
  title: "Król.",
  body: "Ten facet powinien być królem świata .",
  reviewed_id: @danny.id,
  reviewer_id: @aga.id
)

Review.find_or_create_by(
  rating: 5,
  title: "I'm Speechless",
  body: "The best non-sheep I know by quite a margin",
  reviewed_id: @danny.id,
  reviewer_id: @finn.id
)




