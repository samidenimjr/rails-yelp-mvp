# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants = [
  { name: "Chez Pierre", address: "10 rue de Paris, Paris", phone_number: "0123456789", category: "french" },
  { name: "La Bella Napoli", address: "25 avenue des Champs, Lyon", phone_number: "0987654321", category: "italian" },
  { name: "Sushi Zen", address: "5 boulevard Haussmann, Marseille", phone_number: "0678901234", category: "japanese" },
  { name: "Le Wok d'Or", address: "88 avenue de la République, Bordeaux", phone_number: "0765432189", category: "chinese" },
  { name: "Brasserie Belge", address: "42 rue Royale, Lille", phone_number: "0654321098", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end
