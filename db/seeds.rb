# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.create(name: "Michael Jackson")
artist2 = Artist.create(name: "Drake")

song1 = Song.create(title: "Thriller", artist_id: artist1.id)
song2 = Song.create(title: "Nice for What", artist_id: artist2.id)
