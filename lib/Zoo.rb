
class Zoo
    @@all = []

    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def location
        #location of the zoo instance
        @location
    end

    def name
        #name of the zoo instance
        @name 
    end

    def self.all
        #array of the zoo instances
        @@all
    end

    def animal_species
        #array of all the animals's species in this instance of zoo
    #    Animal.all.select {|findanimal| findanimal == species}
        Animal.all.map {|animal| animal.species }
        #select?
    end

    def find_by_species(species)
        #array of all the animals in this instance of zoo, with that species
        # .find
        Animal.all.find { |animal|  animal.species == species }
    
    end

    def animal_nicknames
        #return array of all the nicknames of all animals in this instance fo zoo
        Animal.all.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        #return array of all the zoos in that location
        self.all.select { |place| place.location == location }
     
    end


end
