require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

bronx_zoo = Zoo.new("Bronx Zoo", "NYC")
tiger = Animal.new("tiger", 800, "Tony", bronx_zoo)
lion = Animal.new("lion", 600, "Leo", bronx_zoo)
london_zoo = Zoo.new("London Zoo", "London")
hippo = Animal.new("Hippopotamus", 2000, "Hilda", london_zoo)
tiger_london = Animal.new("tiger", 700, "Tigz", london_zoo)

binding.pry
puts "done"
