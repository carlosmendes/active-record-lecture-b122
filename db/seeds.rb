# run this file by:
# rake db:seed
# This is where you can create initial data for your app.

puts "Destroy all data!!!!"
Restaurant.destroy_all

puts "Creating new ones!"
bifana_place = Restaurant.new(name: 'Bifana Place', address: 'Mercado Da Ribeira', rating: 3)
bifana_place.save! # lauches exception if the bifana_place cannot be save into the DB
# .save alwayas resturn true or false

require 'faker'

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  (0..5).to_a.sample
  )
  restaurant.save!
end
puts 'Finished!'
