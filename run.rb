require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

london_zoo = Zoo.new(location: "UK", name: "London Zoo")
manchester_zoo = Zoo.new(location: "UK", name: "Manchester Zoo")
edinburgh_zoo = Zoo.new(location: "UK", name: "Edinburgh Zoo")
hong_kong_zoo = Zoo.new(name: "Hong Kong Zoo", location: "Hong Kong")
paris_zoo = Zoo.new(location: "France", name: "Paris Zoo")
lille_zoo = Zoo.new(location: "France", name: "Lille Zoo")

london_zoo.new_animal(species: "lion", weight: 250, nickname: "Leo")
london_zoo.new_animal(species: "lion", weight: 100, nickname: "Simba")
london_zoo.new_animal(species: "penguin", weight: 15, nickname: "Pingu")
lille_zoo.new_animal(species: "lion", weight: 200, nickname: "Mufasa")
manchester_zoo.new_animal(species: "giraffe", weight: 300, nickname: "Spotty")

binding.pry
puts "done"
