require_relative "config/application"

# CRUD: ActiveRecord

# create new restaurant object
r = Restaurant.new(name: 'Catedral',
                   address: 'Benfica Stadium',
                   rating: 5)
# r.save # save the object info into the DB

# same as
# # Restaurant.create(name: 'Catedral',
#                    address: 'Benfica Stadium',
#                    rating: 5)

# Read

# list
# p Restaurant.all

# get one
# p Restaurant.find(1)

# Restaurant.first
# Restaurant.last
# Restaurant.find_by_attribute(value)
# p Restaurant.find_by_name("Catedral")
# p Restaurant.find_by(name: "Catedral")

p Restaurant.where(name: "Catedral")
# same as the previous line
# p Restaurant.where("restaurants.name = ?", "Catedral")

# Update

r = Restaurant.last
# setter for name
# attr_writer :name
r.name = "Frankies"
r.save
# same as previous line
r.update(name: "Frankies")

# DELETE

# r.destroy # delete r object from the DB


Restaurant.destroy_all # destroy all the restaurants
# def self.destroy_all inside the ActiveRecord::Base











