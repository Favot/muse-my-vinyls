# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# seed.rb

puts "Cleaning all databases..."

Renting.destroy_all
Vinyl.destroy_all
User.destroy_all

puts "Seeding 4 users..."

lise = User.create!(
  email: "lise@example.com",
  password: "123456",
  first_name: "Lise",
  last_name: "H"
)

bastien = User.create!(
  email: "bastien@example.com",
  password: "123456",
  first_name: "Bastien",
  last_name: "HR"
)

christophe = User.create!(
  email: "christophe@example.com",
  password: "123456",
  first_name: "Christophe",
  last_name: "H"
)

corentin = User.create!(
  email: "corentin@example.com",
  password: "123456",
  first_name: "Corentin",
  last_name: "F"
)

puts "Seeding some vinyls..."

lise_vinyl_1 = Vinyl.create!(
  title: "Physical Graffiti (Remastered Original Vinyl)",
  artist: "Led Zeppelin",
  price_per_day: 6,
  description: "Certified 16x platinum in the U.S., the commercial success of Physical Graffiti was equaled by its critical reception.",
  condition: "Good",
  owner: lise
)

lise_vinyl_2 = Vinyl.create!(
  title: "Mothership (4LP 180 Gram Vinyl)",
  artist: "Led Zeppelin",
  price_per_day: 7,
  description: "MOTHERSHIP's 24 monolithic tracks were selected and sequenced by the band.",
  condition: "Good",
  owner: lise
)

christophe_vinyl_1 = Vinyl.create!(
  title: "Ella and Louis",
  artist: "Louis Armstrong & Ella Fitzgerald ",
  price_per_day: 5,
  description: "A must-have in any jazz lover's collection.",
  condition: "Acceptable",
  owner: christophe
)

christophe_vinyl_2 = Vinyl.create!(
  title: "My Funny Valentine",
  artist: "Chet Baker ",
  price_per_day: 7,
  description: "Excellent album!",
  condition: "Acceptable",
  owner: christophe
)

christophe_vinyl_3 = Vinyl.create!(
  title: "Kind of Blue (Import)",
  artist: "Miles Davis",
  price_per_day: 4,
  description: "Nothing needs to be said that hasn't been said already about this trailblazing masterpiece.",
  condition: "Good",
  owner: christophe
)

christophe_vinyl_4 = Vinyl.create!(
  title: "I Put a Spell on You",
  artist: "Nina Simone",
  price_per_day: 8,
  description: "One of the most beautiful voices in music.",
  condition: "Like new",
  owner: christophe
)

christophe_vinyl_5 = Vinyl.create!(
  title: "Alive",
  artist: "Daft Punk",
  price_per_day: 9,
  description: "Deluxe edition, signed by the artists!! A unique piece of art.",
  condition: "Like new",
  owner: christophe
)

bastien_vinyl_1 = Vinyl.create!(
  title: "Random access memories",
  artist: "Daft Punk",
  price_per_day: 6,
  description: "A state of the art vinyl of the most famouse Daft Punk album, vintage.",
  condition: "Good",
  owner: bastien
)

bastien_vinyl_2 = Vinyl.create!(
  title: "Discovery",
  artist: "Daft Punk",
  price_per_day: 4,
  description: "My favorite album from Daft Punk, but unfortunately a bit used.",
  condition: "Acceptable",
  owner: bastien
)

corentin_vinyl_1 = Vinyl.create!(
  title: "Untouchables",
  artist: "Korn",
  price_per_day: 8,
  description: "Untouchables debuted at number two on the Billboard 200 with 434,000 copies sold during its first week.",
  condition: "Very Good",
  owner: corentin
)

puts "Seeding some rentings..."

renting_1 = Renting.create!(
  renter: corentin,
  vinyl: christophe_vinyl_1,
  start_date: Date.today,
  end_date: Date.today + 7,
  status: "pending"
)

renting_2 = Renting.create!(
  renter: corentin,
  vinyl: christophe_vinyl_2,
  start_date: Date.today,
  end_date: Date.today + 6,
  status: "pending"
)

renting_3 = Renting.create!(
  renter: bastien,
  vinyl: christophe_vinyl_5,
  start_date: Date.today,
  end_date: Date.today + 10,
  status: "pending"
)

renting_4 = Renting.create!(
  renter: lise,
  vinyl: bastien_vinyl_1,
  start_date: Date.today,
  end_date: Date.today + 5,
  status: "accepted"
)

renting_5 = Renting.create!(
  renter: christophe,
  vinyl: corentin_vinyl_1,
  start_date: Date.today,
  end_date: Date.today + 1,
  status: "declined"
)

puts "Finished!"



