Given(/^they have some messages$/) do
  @received_message_1 = Message.create!(
    sender_id: @user_1.id,  
    receiver_id: @user.id,  
    body: "Hey, how's it going?"  
  )
  
  @received_message_2 = Message.create!(
    sender_id: @user_1.id,  
    receiver_id: @user.id,  
    body: "Y U no answer?"  
  )
  
  @received_message_3 = Message.create!(
    sender_id: @user_2.id,  
    receiver_id: @user.id,  
    body: "Yoooooooo"  
  )
  
  @received_message_4 = Message.create!(
    sender_id: @user_2.id,  
    receiver_id: @user_1.id,  
    body: "Hello"  
  )
  
  @received_message_5 = Message.create!(
    sender_id: @user_2.id,  
    receiver_id: @user_1.id,  
    body: "What are you doing?"  
  )
  
  @sent_message_1 = Message.create!(
    sender_id: @user.id,  
    receiver_id: @user_1.id,  
    body: "Because I was eating a bag of crisps"  
  )
  
  @sent_message_2 = Message.create!(
    sender_id: @user.id,  
    receiver_id: @user_2.id,  
    body: "Yooou really need to think of something more creative to write"  
  )
end

When(/^they visit their inbox$/) do
  visit messages_path
end

When(/^they click on the send message link$/) do
  click_on "send_message"
end

When(/^they fill out the message form$/) do
  fill_in "message[body]", with: "Just once I'd like to eat dinner with a celebrity who isn't bound and gagged. I am Singing Wind, Chief of the Martians. Hello, little man. I will destroy you! Check it out, y'all. Everyone who was invited is here. Yeah, I do that with my stupidness. I wish! It's a nickel."
  click_on "send_message"
end

Then(/^the message is sent$/) do
  message = Message.last
  expect(message.body).to eq("Just once I'd like to eat dinner with a celebrity who isn't bound and gagged. I am Singing Wind, Chief of the Martians. Hello, little man. I will destroy you! Check it out, y'all. Everyone who was invited is here. Yeah, I do that with my stupidness. I wish! It's a nickel.")
  expect(message.sender_id).to eq(@user.id)
  expect(message.receiver_id).to eq(@user_1.profile_id)
  expect(page).to have_content("Your message has been sent!")
end

Then(/^they see their messages$/) do
  expect(page).not_to have_css(".message-container p", text: @received_message_1.body)
  expect(page).not_to have_css(".message-container p", text: @received_message_2.body)
  expect(page).to have_css(".message-container p", text: @received_message_3.body)
  expect(page).not_to have_css(".message-container p", text: @received_message_4.body)
  expect(page).not_to have_css(".message-container p", text: @received_message_5.body)
end

Then(/^they see their replies$/) do
  expect(page).not_to have_content(@sent_message_1.body)
  expect(page).to have_content(@sent_message_2.body)
end