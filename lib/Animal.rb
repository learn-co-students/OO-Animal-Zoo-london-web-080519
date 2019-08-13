
class Animal
    @@all = []

    attr_reader :nickname, :species, :zoo #need to read zoo
    attr_accessor :weight

    def initialize(nickname:, species:, weight:, zoo:)
        @nickname = nickname
        @species = species
        @weight = weight
        @zoo = zoo
        @@all << self
    end

    def self.all
        #array of all animal instances
        @@all
    end


    def self.find_by_species(speciestofind) 
        self.all.find_all {|animal| animal.species == speciestofind } 
    end


end
