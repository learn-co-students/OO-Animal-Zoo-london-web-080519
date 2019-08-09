class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name:, location:)
        @name = name
        @location = location

        @@all <<self
    end

    def self.all
        @@all
    end

    def new_animal(species:, nickname:, weight:)
        Animal.new(zoo: self, species: species, nickname: nickname, weight: weight)
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        animals.map{|animal| animal.species }.uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species.downcase == species.downcase}
    end

    def animal_nicknames
        animals.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select{|zoo| zoo.location.downcase == location.downcase }
    end
end
