puts 'Destroying Old Data'
Restaurant.destroy_all

puts 'Creating Restaurants'
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(digits: 8),
    category: %w[chinese italian japanese french belgian].sample
  )
end
