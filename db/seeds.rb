# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Seeding flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
puts "Created Light & Spacious Garden Flat London"

Flat.create!(
  name: 'Stylish Apartment in the Heart of the City',
  address: '20 Fleet Street London EC4Y 1AA',
  description: 'Enjoy city life in this stylish apartment. Close to landmarks, restaurants, and public transport.',
  price_per_night: 100,
  number_of_guests: 2
)
puts "Created Stylish Apartment in the Heart of the City"

Flat.create!(
  name: 'Cozy Studio in Downtown',
  address: '35 Oxford Street London W1D 2LT',
  description: 'A cozy and modern studio located in the heart of downtown. Perfect for solo travelers or couples.',
  price_per_night: 65,
  number_of_guests: 2
)
puts "Created Cozy Studio in Downtown"

Flat.create!(
  name: 'Modern Flat with City Views',
  address: '50 King\'s Cross Road London N1 9AA',
  description: 'This modern flat offers stunning views of the city. Includes two bedrooms, a spacious living area, and a fully equipped kitchen.',
  price_per_night: 120,
  number_of_guests: 4
)
puts "Created Modern Flat with City Views"

Flat.create!(
  name: 'Charming House near the River',
  address: '75 Riverside London SE1 2NE',
  description: 'A charming house located near the river. Features three bedrooms, a large living room, and a beautiful garden.',
  price_per_night: 90,
  number_of_guests: 5
)
puts "Created Charming House near the River"

puts "Finished seeding flats!"