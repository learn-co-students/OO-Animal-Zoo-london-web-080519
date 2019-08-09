require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

london_zoo = Zoo.new(name:"London Zoo", location:"London")
oxford_zoo = Zoo.new(name:"Oxford Zoo", location:"Oxford")
hyde_park_zoo = Zoo.new(name:"Hyde Park Zoo", location:"London")
mimi = Animal.new(species: "Giraffe", weight: 1000, nickname: "Mimi")
leon = Animal.new(species: "Lion", weight: 300, nickname: "Leon")
nala = Animal.new(species: "Lion", weight: 250, nickname: "Nala")
kakao = Animal.new(species: "Parrot", weight: 1, nickname: "Kakao")
mimi.zoo = oxford_zoo
leon.zoo = london_zoo
nala.zoo = london_zoo
kakao.zoo = london_zoo

binding.pry
puts "done"
