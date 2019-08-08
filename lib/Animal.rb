
class Animal
    @@all = []

    attr_reader :nickname, :species
    attr_accessor :weight

    def initialize(nickname:, species:, weight:)
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

    def all
        #array of all animal instances
        @@all
    end

    def zoo
        #return ZOO instance that this instance belongs to
        Zoo.all.select {|zoo| }
    end

    def find_by_species(species)
        #array of all the animals of this species
    end


end
