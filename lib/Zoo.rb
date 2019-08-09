class Zoo
attr_reader :name, :animals, :nickname
attr_accessor :location, :zoo
@@all = []
def initialize(name,location)
    @name = name 
    @location = location 
    @@all << self 
    @animals =[]
end 

def self.location 
    return @location 
end

def self.animals 
    return @animals
end

def self.name
    return @name 
end 

def self.all
    return @@all
end

def find_by_location(location)
    self.all.select{|zoo|zoo.location == self }
end 

def adopt(animal)
    @animals << animal
    animal.zoo = self
end

def animal_nicknames
 self.animals.map {|animal|animal.nickname}
end 

def find_by_species(species)
    self.animals.map do |animal| animal.species == species 
        return animal
    end
    
    
end

def animal_species
    self.animals.map {|animal|animal.species.uniq}
end




end 