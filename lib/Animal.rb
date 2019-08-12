class Animal
    @@all = []
    
    def self.all
        @@all
    end
    
    def initialize(species, weight, nickname, zoo)      ### zoo = nil       ### for buy_animal
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end
    
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight                               ###, :zoo

    def self.find_by_species(species)
        @@all.select {|animal| animal.species == species}
    end
end
