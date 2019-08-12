require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#animal(species, weight, nickname, zoo)
    #animal.zoo
    #Animal.find_by_species(species)
#zoo(name, location)
    #zoo.animals
    #zoo.find_by_species(species)
    #zoo.animal_nicknames
    #Zoo.find_by_location(location)
    #zoo.buy_animal(animal)

zoo1 = Zoo.new("marvelous", "london")
zoo2 = Zoo.new("bueno", "madrid")

#monkey3 = Animal.new("monkey", 80, "pepe")     ##for buy_animal example
#zoo3 = Zoo.new("pasta", "milan")               ##for buy_animal example
monkey1 = Animal.new("monkey", 50, "paco", zoo1)
zebra1 = Animal.new("zebra", 100, "maria", zoo1)
monkey2 = Animal.new("monkey", 70, "juan", zoo2)
zebra2 = Animal.new("zebra", 110, "ela", zoo2)
lion2 = Animal.new("lion", 200, "felix", zoo2)


binding.pry
puts "done"
