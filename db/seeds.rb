
puts "Cleaning all databases..."

Renting.destroy_all
Vinyl.destroy_all
User.destroy_all

puts "Seeding 4 users..."

lise = User.new(
  email: "lise@example.com",
  password: "123456",
  first_name: "Lise",
  last_name: "H"
)



file  = File.open(Rails.root.join('db/media/owners/lise.png'))

lise.photo.attach(io: file, filename: 'lise.png', content_type: 'image/png')

lise.save!



bastien = User.new(
  email: "bastien@example.com",
  password: "123456",
  first_name: "Bastien",
  last_name: "HR"
)


file  = File.open(Rails.root.join('db/media/owners/bastien.jpg'))

bastien.photo.attach(io: file, filename: 'bastien.jpg', content_type: 'image/jpeg')

bastien.save!




christophe = User.new(
  email: "christophe@example.com",
  password: "123456",
  first_name: "Christophe",
  last_name: "H"
)


file  = File.open(Rails.root.join('db/media/owners/christophe.jpg'))

christophe.photo.attach(io: file, filename: 'christophe.jpg', content_type: 'image/jpeg')

christophe.save!



corentin = User.new(
  email: "corentin@example.com",
  password: "123456",
  first_name: "Corentin",
  last_name: "F"
)

file  = File.open(Rails.root.join('db/media/owners/corentin.jpg'))

corentin.photo.attach(io: file, filename: 'corentin.jpg', content_type: 'image/jpeg')

corentin.save!



puts "Seeding some vinyls..."

lise_vinyl_1 = Vinyl.new(
  title: "Physical Graffiti (Remastered Original Vinyl)",
  artist: "Led Zeppelin",
  price_per_day: 6,
  description: "Certified 16x platinum in the U.S., the commercial success of Physical Graffiti was equaled by its critical reception.",
  condition: "Good",
  owner: lise
)


file  = File.open(Rails.root.join('db/media/vinyls/graffiti.jpg'))

lise_vinyl_1.photo.attach(io: file, filename: 'graffiti.jpg', content_type: 'image/jpeg')

lise_vinyl_1.save!


lise_vinyl_2 = Vinyl.new(
  title: "Mothership (4LP 180 Gram Vinyl)",
  artist: "Led Zeppelin",
  price_per_day: 7,
  description: "MOTHERSHIP's 24 monolithic tracks were selected and sequenced by the band.",
  condition: "Good",
  owner: lise
)

file  = File.open(Rails.root.join('db/media/vinyls/mothership.jpg'))

lise_vinyl_2.photo.attach(io: file, filename: 'mothership.jpg', content_type: 'image/jpeg')

lise_vinyl_2.save!

#1
christophe_vinyl_1 = Vinyl.new(
  title: "Ella and Louis",
  artist: "Louis Armstrong & Ella Fitzgerald ",
  price_per_day: 5,
  description: "A must-have in any jazz lover's collection.",
  condition: "Acceptable",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/ellalouis.jpg'))

christophe_vinyl_1.photo.attach(io: file, filename: 'ellalouis.jpg', content_type: 'image/jpeg')

christophe_vinyl_1.save!

#2
christophe_vinyl_2 = Vinyl.new(
  title: "My Funny Valentine",
  artist: "Chet Baker ",
  price_per_day: 7,
  description: "Excellent album!",
  condition: "Acceptable",
  owner: christophe
)


file  = File.open(Rails.root.join('db/media/vinyls/chetbaker.jpg'))

christophe_vinyl_2.photo.attach(io: file, filename: 'chetbaker.jpg', content_type: 'image/jpeg')

christophe_vinyl_2.save!

#3
christophe_vinyl_3 = Vinyl.new(
  title: "Kind of Blue (Import)",
  artist: "Miles Davis",
  price_per_day: 4,
  description: "Nothing needs to be said that hasn't been said already about this trailblazing masterpiece.",
  condition: "Good",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/milesdavis.jpg'))

christophe_vinyl_3.photo.attach(io: file, filename: 'milesdavis.jpg', content_type: 'image/jpeg')

christophe_vinyl_3.save!

#4
christophe_vinyl_4 = Vinyl.new(
  title: "I Put a Spell on You",
  artist: "Nina Simone",
  price_per_day: 8,
  description: "One of the most beautiful voices in music.",
  condition: "Like new",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/ninasimone.jpg'))

christophe_vinyl_4.photo.attach(io: file, filename: 'ninasimone.jpg', content_type: 'image/jpeg')

christophe_vinyl_4.save!

# start example
#5
christophe_vinyl_5 = Vinyl.new(
  title: "Alive",
  artist: "Daft Punk",
  price_per_day: 9,
  description: "Deluxe edition, signed by the artists!! A unique piece of art.",
  condition: "Acceptable",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/alive.jpg'))

christophe_vinyl_5.photo.attach(io: file, filename: 'alive.jpg', content_type: 'image/jpeg')

christophe_vinyl_5.save!

# end example

#6
christophe_vinyl_6 = Vinyl.new(
  title: "Blue train - Nouvelle édition",
  artist: "John Coltrane",
  price_per_day: 6,
  description: "Le premier chef-d'ouvre de John Coltrane (1957)",
  condition: "Like new",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/Blue-train.jpg'))

christophe_vinyl_6.photo.attach(io: file, filename: 'Blue-train.jpg', content_type: 'image/jpeg')

christophe_vinyl_6.save!

#7
christophe_vinyl_7 = Vinyl.new(
  title: "Closer to the Source",
  artist: "Dizzy Gillespie",
  price_per_day: 6,
  description: "This set of commercial material (with guest spots by Stevie Wonder, tenor saxophonist Branford Marsalis and bassist Marcus Miller)",
  condition: "Good",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/dizzie.jpg'))

christophe_vinyl_7.photo.attach(io: file, filename: 'dizzie.jpg', content_type: 'image/jpeg')

christophe_vinyl_7.save!

#8
christophe_vinyl_8 = Vinyl.new(
  title: "Wynton Marsalis' First Recordings",
  artist: "Wynton Marsalis",
  price_per_day: 5,
  description: "Enregistré à Bubba's Jazz Restaurant",
  condition: "Acceptable",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/winton.jpg'))

christophe_vinyl_8.photo.attach(io: file, filename: 'winton.jpg', content_type: 'image/jpeg')

christophe_vinyl_8.save!

#9
christophe_vinyl_9 = Vinyl.new(
  title: "Monk.",
  artist: "Thelonious Monk",
  price_per_day: 4,
  description: "Monk est un album du pianiste de jazz Thelonious Monk sorti en 1954 sur le label Prestige",
  condition: "Acceptable",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/monk.jpg'))

christophe_vinyl_9.photo.attach(io: file, filename: 'monk.jpg', content_type: 'image/jpeg')

christophe_vinyl_9.save!

#10
christophe_vinyl_10 = Vinyl.new(
  title: "Illusions",
  artist: "IBRAHIM MAALOUF",
  price_per_day: 8,
  description: "L’envie de traiter le thème de l’illusion m’est apparue dès ma première désillusion.",
  condition: "Good",
  owner: christophe
)

file  = File.open(Rails.root.join('db/media/vinyls/maalouf.jpg'))

christophe_vinyl_10.photo.attach(io: file, filename: 'maalouf.jpg', content_type: 'image/jpeg')

christophe_vinyl_10.save!

#bastien vinyls

bastien_vinyl_1 = Vinyl.new(
  title: "Random access memories",
  artist: "Daft Punk",
  price_per_day: 6,
  description: "A state of the art vinyl of the most famouse Daft Punk album, vintage.",
  condition: "Good",
  owner: bastien
)

file  = File.open(Rails.root.join('db/media/vinyls/memories.jpg'))

bastien_vinyl_1.photo.attach(io: file, filename: 'memories.jpg', content_type: 'image/jpeg')

bastien_vinyl_1.save!

bastien_vinyl_2 = Vinyl.new(
  title: "Discovery",
  artist: "Daft Punk",
  price_per_day: 4,
  description: "My favorite album from Daft Punk, but unfortunately a bit used.",
  condition: "Acceptable",
  owner: bastien
)

file  = File.open(Rails.root.join('db/media/vinyls/discovery.jpg'))

bastien_vinyl_2.photo.attach(io: file, filename: 'discovery.jpg', content_type: 'image/jpeg')

bastien_vinyl_2.save!

#1
corentin_vinyl_1 = Vinyl.new(
  title: "Untouchables",
  artist: "Korn",
  price_per_day: 8,
  description: "Untouchables debuted at number two on the Billboard 200 with 434,000 copies sold during its first week.",
  condition: "Very good",
  owner: corentin
)

file  = File.open(Rails.root.join('db/media/vinyls/korn.jpg'))

corentin_vinyl_1.photo.attach(io: file, filename: 'korn.jpg', content_type: 'image/jpeg')

corentin_vinyl_1.save!

#2
corentin_vinyl_2 = Vinyl.new(
  title: "Anarchy",
  artist: "Busta Rhymes",
  price_per_day: 6,
  description: "L'album s'est classé 1er au Top R&B/Hip-Hop Albums et 4e au Billboard 2006 ",
  condition: "Acceptable",
  owner: corentin
)

file  = File.open(Rails.root.join('db/media/vinyls/busta.jpg'))

corentin_vinyl_2.photo.attach(io: file, filename: 'busta.jpg', content_type: 'image/jpeg')

corentin_vinyl_2.save!

#3
corentin_vinyl_3 = Vinyl.new(
  title: "Blackout!",
  artist: " Method Man & Redman",
  price_per_day: 7,
  description: "l'album est certifié disque de platine, seulement trois mois après sa sortie.",
  condition: "Like new",
  owner: corentin
)

file  = File.open(Rails.root.join('db/media/vinyls/redman.jpg'))

corentin_vinyl_3.photo.attach(io: file, filename: 'redman.jpg', content_type: 'image/jpeg')

corentin_vinyl_3.save!

#4
corentin_vinyl_4 = Vinyl.new(
  title: "Bloodlust",
  artist: "Body Count",
  price_per_day: 7,
  description: "Bloodlust is the sixth studio album by American heavy metal band Body Count",
  condition: "Acceptable",
  owner: corentin
)

file  = File.open(Rails.root.join('db/media/vinyls/Bloodlust.jpg'))

corentin_vinyl_4.photo.attach(io: file, filename: 'Bloodlust.jpg', content_type: 'image/jpeg')

corentin_vinyl_4.save!



puts "Seeding some rentings..."

total_price = 7 * christophe_vinyl_1.price_per_day

renting_1 = Renting.create!(
  renter: corentin,
  vinyl: christophe_vinyl_1,
  start_date: Date.today,
  end_date: Date.today + 7,
  status: "Pending",
  total_price: total_price
)

total_price = 6 * christophe_vinyl_2.price_per_day

renting_2 = Renting.create!(
  renter: corentin,
  vinyl: christophe_vinyl_2,
  start_date: Date.today,
  end_date: Date.today + 6,
  status: "Pending",
  total_price: total_price
)

total_price = 10 * christophe_vinyl_5.price_per_day

renting_3 = Renting.create!(
  renter: bastien,
  vinyl: christophe_vinyl_5,
  start_date: Date.today,
  end_date: Date.today + 10,
  status: "Pending",
  total_price: total_price
)

total_price = 5 * bastien_vinyl_1.price_per_day

renting_4 = Renting.create!(
  renter: lise,
  vinyl: bastien_vinyl_1,
  start_date: Date.today,
  end_date: Date.today + 5,
  status: "Accepted",
  total_price: total_price
)

total_price = 1 * corentin_vinyl_1.price_per_day

renting_5 = Renting.create!(
  renter: christophe,
  vinyl: corentin_vinyl_1,
  start_date: Date.today,
  end_date: Date.today + 1,
  status: "Declined",
  total_price: total_price
)

puts "Finished!"

