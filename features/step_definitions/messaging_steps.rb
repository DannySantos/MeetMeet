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