require "pry"

class Zoo
    attr_accessor :name, :location 

    @@all = [] 

    def initialize(name, location)
        @name = name 
        @location = location 
        @@all << self 
    end 


    def self.all 
        @@all 
    end 

    #hould return all the animals that a specific instance of a zoo has.
    #make an array of animals tied to this zoo 
    def animals 
        animals_zoo = [] 
        Animal.all.select do | animal | 
            if animal.zoo == self 
                animals_zoo << animal 
            end 
        end 
        animals_zoo
    end 

    #take in an animal's species as an argument and return an array of all the 
    #animals in that zoo, which are of that species.
    # need to look into an array of all the animals in this zoo, then pick out the one where 
    #species matches the argument 
    def animal_species(species)
        #animal.species
        self.animals.select do | animal |
            animal.species == species 
        end 
    end

    def animal_nicknames
        zoo_nicknames = []
        self.animals.each do | animal |
            zoo_nicknames << animal.nickname 
        end 
        zoo_nicknames
    end

    def self.find_by_location(location)
        zoo_location = []
        self.all | zoo | 
            if zoo.location = location 
                zoo_location << self.name
            end 
        zoo_location 
    end 

end

