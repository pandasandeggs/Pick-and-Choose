# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Picture.destroy_all
Tag.destroy_all
Comment.destroy_all
PictureTag.destroy_all

mary = User.create(username: "Mary", email: "mary@marsmail.com", password_digest: BCrypt::Password.create('m@ry$pa44w0rd'))
michael = User.create(username: "Michael", email: "michael@plutomail.com", password_digest: BCrypt::Password.create('p00p$pa44w0rd'))
beth = User.create(username: "Beth", email: "beth@saturnmail.com", password_digest: BCrypt::Password.create('be$tp@$$w04q'))
olivia = User.create(username: "Olivia", email: "olivia@venusmail.com", password_digest: BCrypt::Password.create('admin123'))
amanda = User.create(username: "Amanda", email: "amanda@jupiter.com", password_digest: BCrypt::Password.create('12345abcde'))
sam = User.create(username: "Sam", email: "sam@pluto.com", password_digest: BCrypt::Password.create('abc123$abc'))
thomas = User.create(username: "Thomas", email: "thomas@mercury.com", password_digest: BCrypt::Password.create('G0123$45@c'))
traci = User.create(username: "Traci", email: "traci@earth.com", password_digest: BCrypt::Password.create('Fl0w3r$3v3rywh3re'))


dress1 = Picture.create(image_url:"https://goo.gl/images/BceTz5" , title: "Sophia Wedding Dress", user_id: 4)
dress2 = Picture.create(image_url:"https://goo.gl/images/BKAYaS" , title: "Modern Wedding Dress", user_id: 5)
dish1 = Picture.create(image_url:"https://goo.gl/images/sR8BqR" , title: "Steak Marinade", user_id: 2)
dish2 = Picture.create(image_url:"https://goo.gl/images/mKmKM5" , title: "Shoyu Ramen", user_id: 1)
vacation_rental1 = Picture.create(image_url:"https://goo.gl/images/skoYmG" , title: "Beach House", user_id: 3)
vacation_rental2 = Picture.create(image_url:"https://goo.gl/images/HC535y" , title: "Mountain Cabin", user_id: 7)

tag1 = Tag.create(name: "Dresses")
tag2 = Tag.create(name: "Meal")
tag3 = Tag.create(name: "VacationRental")
tag4 = Tag.create(name: "Jobs")
tag5 = Tag.create(name: "InteriorDecorating")
tag6 = Tag.create(name: "HomeRemodeling")
tag7 = Tag.create(name: "Makeup")
tag8 = Tag.create(name: "Hair")

comment1 = Comment.create(message: "You've got to be kidding.", picture_id: 1, user_id: 5)
comment2 = Comment.create(message: "Absolutely!", picture_id: 1, user_id: 10)
comment3 = Comment.create(message: "I'm drooling! That looks so good!", picture_id: 3, user_id: 2)
comment4 = Comment.create(message: "Yuk!", picture_id: 4, user_id: 4)
comment5 = Comment.create(message: "Oh my gosh! Please take me with you!!!", picture_id: 5, user_id: 1)
comment6 = Comment.create(message: "Is it free?!", picture_id: 5, user_id: 2)
comment7 = Comment.create(message: "Thank You!  This helps so much.", picture_id: 2, user_id: 5)
comment8 = Comment.create(message: "Not my style.", picture_id: 1, user_id: 9)
comment9 = Comment.create(message: "That's gorgeous! :D", picture_id: 2, user_id: 8)
comment10 = Comment.create(message: "Where's the beef?!", picture_id: 4, user_id: 3)

pictag1 = PictureTag.create(picture_id: 1, tag_id: 1)
pictag2 = PictureTag.create(picture_id: 2, tag_id: 1)
pictag3 = PictureTag.create(picture_id: 3, tag_id: 2)
pictag4 = PictureTag.create(picture_id: 4, tag_id: 2)
pictag5 = PictureTag.create(picture_id: 5, tag_id: 3)
pictag6 = PictureTag.create(picture_id: 6, tag_id: 3)
