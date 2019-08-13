
class Zoo
    @@all = []

    attr_reader :name, :location

    def initialize(name:, location:)
        @name = name
        @location = location
        @@all << self
    end


    def self.all
        #array of the zoo instances
        @@all
    end

    def animals 
        Animal.all.select {|animal| animal.zoo == self}
     end

    def animal_species
        #array of all the animals's species in this instance of zoo
        self.animals.map {|animal| animal.species } #seed data chains these (drake examples)
    end

    def find_by_species(species)
         self.animals.find {|animal| animal.species == species }
    end

    def animal_nicknames
        #return array of all the nicknames of all animals in this instance of zoo
        self.animals.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select { |place| place.location == location }
    end


end
