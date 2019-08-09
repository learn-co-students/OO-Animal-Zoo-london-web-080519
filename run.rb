require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

san_diego = Zoo.new("San Diego Zoo", "California")
san_francisco = Zoo.new("San Francisco Zoo", "California")
orlando = Zoo.new("Orlando Zoo", "Florida")
st_petersburg = Zoo.new("St Petersburg Zoo", "Florida")
bronx = Zoo.new("Bronx Zoo", "New York")
central_park = Zoo.new("Central Park Zoo", "New York")
julian = Animal.new(species:"lemur", weight:5, nickname:"King Julian",zoo: nil)
marty = Animal.new(species:"zebra", weight:200, nickname:"Marty",zoo: nil)
melman = Animal.new(species:"giraffe",weight:300,nickname:"Melman",zoo: nil)
gloria = Animal.new(species:"hippo",weight:500, nickname:"Gloria",zoo: nil)
alex = Animal.new(species:"lion",weight:250,nickname:"Alex",zoo: nil)


binding.pry
puts "done"
