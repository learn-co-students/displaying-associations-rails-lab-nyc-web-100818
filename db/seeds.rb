10.times do
Artist.create(name: Faker::Music.band)
Song.create(title: Faker::Movie.quote, artist_id: rand(1..10))
end
