# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all

flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Cozy Loft in Paris',
    address: '25 Rue de Rivoli, Paris, France',
    description: 'Experience Parisian charm in this cozy loft. Perfect for couples or solo travelers, featuring a comfortable bed, small kitchenette, and a view of the Eiffel Tower from the window.',
    price_per_night: 100,
    number_of_guests: 2
  },
  {
    name: 'Modern Beach House in Malibu',
    address: '123 Ocean Drive, Malibu, CA 90265',
    description: 'Escape to this modern beach house with stunning ocean views. Enjoy luxurious amenities including a private pool, spacious deck, and direct beach access. Perfect for a family getaway or a romantic retreat.',
    price_per_night: 300,
    number_of_guests: 6
  },
  {
    name: 'Charming Cottage in the English Countryside',
    address: '5 Rose Lane, Cotswolds, England',
    description: 'Step into the pages of a storybook in this charming English cottage. Surrounded by picturesque countryside, this cozy retreat offers tranquility and comfort. Features include a wood-burning fireplace, a garden with a babbling brook, and rustic decor.',
    price_per_night: 150,
    number_of_guests: 4
  }
]

Flat.create!(flats_attributes)

p "#{Flat.count} flats were created"
