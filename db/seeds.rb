# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  name: "Marshall Chikari",
  username: "marshallchikari",
)

User.create(
  name: "User Two",
  username: "user2",
)

Group.create(
  name: "Food",
  user_id: 1,
)

Group.create(
  name: "Utilities",
  user_id: 1,
)

Group.create(
  name: "Food",
  user_id: 1,
)
