require "pry"

class Animal

    attr_accessor :zoo, :species 
    attr_reader :nickname, :weight 

    @@all = [] 

    def initialize(species, weight, nickname, zoo)
        @species = species 
        @weight = weight 
        @nickname = nickname 
        @zoo = zoo 
        @@all << self 
        
    end 

    def self.all 
        @@all 
    end 

    def self.find_by_species(species)
        animal_species = []
        self.all.select do | animal | 
            if animal.species == species 
                animal_species << animal.species
            end 
        end 
    end 
    
end
