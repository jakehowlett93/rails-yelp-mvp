puts 'cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save
  review = Review.new(
    content: Faker::GreekPhilosophers.quote,
    rating: [0, 1, 2, 3, 4, 5].sample,
    restaurant_id: restaurant.id
  )
  review.save
end
