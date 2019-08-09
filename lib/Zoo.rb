class Zoo

    @@all = []

    attr_reader :location, :name

    def initialize(name: , location: )
        @name = name
        @location = location

        @@all << self
    end

    def self.all
        @@all
    end

    def new_animal(species: , weight: , nickname: )
        new_animal = Animal.new(species: species, weight: weight, nickname: nickname, zoo: self)
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        all_species = self.animals.map{|animal|animal.species}
        all_species.uniq
    end
    
    def find_by_species(species)
        self.animals.select {|animal| animal.species == species}
    end

    def animal_nicknames
        self.animals.map{|animal|animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select {|zoo| zoo.location == location}
    end

end
