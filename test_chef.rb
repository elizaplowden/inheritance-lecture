require_relative 'restaurant'

cecconis = Restaurant.new("Cecconis", "London", "Italian", 100, "Katie")

puts "The chef of #{cecconis.name} is #{cecconis.chef.name}"

katie = cecconis.chef
p katie.restaurant
p cecconis.chef
