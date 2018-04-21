# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_password_default = "12345678"

p "Creating user ..."
User.delete_all

10.times do |i|
  User.create! email: "email_user_#{i}@localhost.com",
    password: user_password_default,
    password_confirmation: user_password_default
end

p "Creating chatroom ..."
ChatRoom.delete_all

10.times do |i|
  ChatRoom.create! topic: "Topic #{i}"
end
