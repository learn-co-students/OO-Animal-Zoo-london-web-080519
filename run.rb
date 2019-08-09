require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
# create an object instance for Zoo class
zo1 = Zoo.new("london Zoo", "london")

zo2 = Zoo.new("nottingham Zoo", "nottingham")

zo3 = Zoo.new("Safari", "london")
# create an object instance for Animal class
tiger = Animal.new(zo1, "cat", 400, "Tigger")
egal = Animal.new(zo1, "bird", 100, "dark")

lion = Animal.new(zo2, "cat", 500, "Simpa")

###################### Zoo class ###################### 
# return zo1 location 
# p zo1.location
# p zo2.location

# # return zo1 name
# p zo1.name
# p zo2.name

# # return the zoo instance that the instance belongs to.
# p Zoo.all_zoo

# # return all the animals that a specific instance of a zoo has.
# p zo1.animals

# # return an array of all the species (as strings) of the animals in the zoo. 
# p zo1.animal_species

# # take in an animal's species as an argument and return an array of all the animals
# #  in that zoo, which are of that species.
# p find_by_species("cat")

# # p tiger.name
# # p lion.name 


binding.pry
puts "done"
