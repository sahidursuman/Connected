# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# run be rake db:reset whenever you make updates to the seed data
bios = ["Shaindel Beers, the once promising young poet, has decided after reading many literary journals, including this one, that mediocrity is the way to go. Obviously no one was brilliant enough to understand her allusions to the classical mythologies of ancient civilizations, her personal theories of metaphysics, or her unique insight into the human condition. Instead, journals have elected to publish her drunken scrawlings written on napkins at dive bars, which she then drunk types when she comes home alone from happy hours at various establishments. The other nights, little writing gets done.
", "Jonathan Pinnock is the author of “Apathy: A 21st Century Manifesto”. He’d tell you more about himself if he could be bothered.", "Odoacer Pinkyring Moses de la Salle Cuthbert-Jones is that weird guy who lives in the van parked across the street from your house. He is allergic to everything, especially air and water. His most recent book, the title of which is unpronounceable in any human language, spent 30 seconds at the top of the best seller list in the Autonomous Republic of Erewhon. One day he will destroy you all.", "Robert McDermott was intended to be the reincarnation of Robert Lowell but owing to a clerical error is actually the reincarnation of John Berryman. His poetry is quite remarkable and is easily the best on his ward. He is currently writing an opera about oranges and in his next life he wants to be a Shakespearean villain. His latest collection ‘In conversation with Kilgore Trout’ has attracted wide praise and is available in spirit everywhere.", "Kellian Angelou is famous and well-known for winning the Pullet’s Surprise, the No Bell Piece Prize, and the Mack Arthur Genie Grant for her poetry collection exploring the uncertainty of scales, The Waistland. The Waistland is a corset of sonnets dealing with the tragic difficulty of being a size 14 in a world of zeros. Kellian received her MFA from the I-Owe-ya Writers Workshop. She currently lives with her wild emu, Walt, in the Northwest.
"]

user1 = User.create(username: 'Holly Anderson', email: "holly@gmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/SA20YXQRC4.jpg", bio: bios.sample, city: "Austin", state: "Texas", zipcode: 78756)
user2 = User.create(username: 'Rachel Smith', email: "iliketoshop@gmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/IJ5FMCOR7O.jpg", bio: bios.sample, city: "Austin", state: "Texas", zipcode: 78756)
user3 = User.create(username: 'Ross Geller', email: "ross123@hotmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/TRJ61FPYW5.jpg", bio: bios.sample, city: "Austin", state: "Texas", zipcode: 78756)
user4 = User.create(username: 'Charlie Day', email: "charlie@gmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/EOG6UD4Z29.jpg", bio: bios.sample, city: "Austin", state: "Texas", zipcode: 78756)
user5 = User.create(username: 'Lucy McDonald', email: "bluedresses4va@gmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/UPONI5PK8M.jpg", bio: bios.sample, city: "Austin", state: "Texas", zipcode: 78756)
user6 = User.create(username: 'Tommy Brady', email: "champ@gmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/FB2D66688C.jpg", bio: bios.sample, city: "Hudson", state: "NH", zipcode: 03051)
user7 = User.create(username: 'Eric Bachman', email: "aviato@gmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/TBBWMZOE4W.jpg", bio: bios.sample, city: "Hudson", state: "NH", zipcode: 03051)
user8 = User.create(username: 'Leslie Knope', email: "parks@hotmail.com", password: "abc123",password_confirmation: "abc123", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/4D181PL4BO.jpg", bio: bios.sample, city: "Hudson", state: "NH", zipcode: 03051)

i1 = Interest.create(name: "Sports", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/M5VXQW4ZLG.jpg")
i2 = Interest.create(name: "Music", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/KNC6B45VG3.jpg")
i3 = Interest.create(name: "Food", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/CEBSW6SP3G.jpg")
i4 = Interest.create(name: "Fitness", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/3H89EH3WIJ.jpg")
i5 = Interest.create(name: "Politics", image_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/960w/D1615D3FD6.jpg")
i6 = Interest.create(name: "Books", image_url: "https://obsessivebookworm.files.wordpress.com/2011/01/books.jpg")

user1.interests << i1
user1.interests << i2

user2.interests << i1
user2.interests << i3

user3.interests << i2
user3.interests << i3
user3.interests << i4
user3.interests << i5
user3.interests << i6
user3.interests << i1

user4.interests << i1
user4.interests << i4

user5.interests << i1
user5.interests << i4
user5.interests << i2
user5.interests << i3

user6.interests << i3
user6.interests << i1
user6.interests << i2
user6.interests << i5

user7.interests << i3
user7.interests << i1

user8.interests << i3
user8.interests << i1
user8.interests << i2
user8.interests << i4

convo1 = Conversation.create(sender_id: user1.id, recipient_id: user2.id)
message1 = Message.create(conversation_id: convo1.id, body: "Hey, wassup?", user_id: user1.id, read: true)
message2 = Message.create(conversation_id: convo1.id, body: "Chilling. What are you up to?", user_id: user2.id)

convo2 = Conversation.create(sender_id: user2.id, recipient_id: user3.id)
message3 = Message.create(conversation_id: convo2.id, body: "You going out tonight?", user_id: user2.id, read: true)
message4 = Message.create(conversation_id: convo2.id, body: "Only if you go.", user_id: user3.id)














