class Zoo
    attr_reader :zoo, :location, :animals, :animal_species
    @@all = []

    def initialize(zoo, location)
        @zoo = zoo
        @location = location
        @@all << self


        
    end
    def self.all #class method
        @@all
    end

    def animals
        # @@all_animal.reject(&:empty?).join(" ")
        
        Animal.all.select { |animal| animal.zoo == self}
    end

    def animal_species

    animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nickname
        animals.map{|animal| animal.nickzoo }
    end

    def self.find_by_location(location) # class method
        # new_zoo = []
        # self.all.each {|zoo| 
        # if zoo.location == location
        #     new_zoo << zoo.zoo
        # end
        # }
        # new_zoo
        self.all.select{|zoo| zoo.location == location}
    end

end
