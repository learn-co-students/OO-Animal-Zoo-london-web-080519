require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new(name: 'Jungle Adventures', location: 'London')
z2 = Zoo.new(name: 'Discover Wildlife', location: 'Cape Town')
z3 = Zoo.new(name: 'Wilderness Journey', location: 'Cape Town')

a1 = z1.new_animal(nickname: "Cheeky", species: "Monkey", weight: 23)
a2 = z1.new_animal(nickname: "Jeff", species: "Elephant", weight: 400)
a3 = z1.new_animal(nickname: "Gary", species: "Hippo", weight: 240)
a4 = z2.new_animal(nickname: "Mary", species: "Hippo", weight: 280)
a5 = z2.new_animal(nickname: "Tiny", species: "Monkey", weight: 17)
a6 = z2.new_animal(nickname: "Billy", species: "Mountain Goat", weight: 50)
a7 = z3.new_animal(nickname: "Cal", species: "Giraffe", weight: 490)
a8 = z3.new_animal(nickname: "Jack", species: "Giraffe", weight: 430)



binding.pry
puts "done"
