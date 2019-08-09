
class Animal
    @@all = []

    attr_reader :nickname, :species
    attr_accessor :weight

    def initialize(nickname, species, weight)
        @nickname = nickname
        @species = species
        @weight = weight
        @@all << self
    end

    def nickname
        @nickname
    end

    def species
        @species
    end

    def weight
        @weight
    end

    def self.all
        #array of all animal instances
        @@all
    end

    def zoo
        #return ZOO instance that this instance belongs to
        Zoo.all.select {|zoo| }
    end

    def find_by_species(species)    
        ##self.find_by_species doesn't work - doesn't specify class method, is this better?
        #array of all the animals of this species
        @@all.select {|species| self.species }
    end


end
