# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Jazz", password: "123")

l1 = List.create(name: "Best Action Shows", owner_id: u1)

Vote.create(user_id: u1, list_id: l1)

s1 = Show.create(title: "Who am I?")

ShowsList.create(list_id: l1, show_id: s1)
