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
julian = Animal.new("lemur", 5, "King Julian",zoo: nil)
marty = Animal.new("zebra", 200, "Marty",zoo: nil)
melman = Animal.new("giraffe",300,"Melman",zoo: nil)
gloria = Animal.new("hippo",500, "Gloria",zoo: nil)
alex = Animal.new("lion",250, "Alex",zoo: nil)


binding.pry
puts "done"
