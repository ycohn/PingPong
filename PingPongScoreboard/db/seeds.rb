# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "playerone@aol.com", name: "Ron Weasly")
User.create(email: "playertwo@aol.com", name: "Hermione Granger")
User.create(email: "playerthree@aol.com", name: "Harry Potter")