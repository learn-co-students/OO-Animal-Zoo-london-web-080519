
class Zoo
    @@all = []

    attr_accessor :name, :location

    def initialize(name:, location:)
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

    def all
        #array of the zoo instances
        @@all
    end

    def animal_species(species)
        #array of all the animals in this instance of zoo, with that species
        #select?
    end

    def find_by_species(species)
        #array of all the animals in this instance of zoo, with that species
        # .find
    end

    def animal_nicknames
        #return array of all the nicknames of all animals in this instance fo zoo
    end

    def find_by_location(location)
        #return array of all the zoos in that location
    end


end
