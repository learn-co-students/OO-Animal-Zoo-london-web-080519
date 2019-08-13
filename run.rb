require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
london = Zoo.new(name: "LZ",location: "London")
newyork = Zoo.new(name: "NYZ",location: "New York")


foop = Animal.new(nickname: "foop", species: "lemur", weight: 300, zoo: london)
moop = Animal.new(nickname: "moop",species: "lemur",weight: 300,zoo: london)
bleep = Animal.new(nickname: "bleep",species: "fox",weight: 100,zoo: newyork)


binding.pry
puts "done"
