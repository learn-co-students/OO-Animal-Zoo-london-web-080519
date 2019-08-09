class Zoo
attr_reader :name, :animals, :nickname
attr_accessor :location, :zoo
@@all = []
def initialize(name,location)
    @name = name 
    @location = location 
    @@all << self 
end 

def self.location 
    return @location 
end

def animals 
    Animal.all.select{|animal|animal.zoo == self }
end

def self.name
    return @name 
end 

def self.all
    return @@all
end

def self.find_by_location(location)
    all.select{|zoo|zoo.location == location }
end 


def animal_nicknames
 self.animals.map {|animal|animal.nickname}
end 

def find_by_species(species)
    self.animals.select {|animal| animal.species == species}
end
    


def animal_species
    self.animals.map {|animal|animal.species.uniq}
end


end 