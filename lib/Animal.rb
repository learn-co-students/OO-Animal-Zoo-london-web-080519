class Animal
    attr_reader :name, :nickname, :species
    attr_accessor :weight
    @@all = []
    def initialize(name, species, weight, nickname)
        @name = name # ?? return first word ??
        @species = species
        @weight = weight
        @nickname = nickname
        @@all  << self
    end 

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select {|animal| animal.species == species}
    end

end
