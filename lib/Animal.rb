class Animal
attr_reader :name, :species
attr_accessor :weight, :zoo

@@all = []
def initialize(species, weight, nickname)
    @species = species
    @weight = weight 
    @nickname = nickname 
    @zoo = zoo
    @@all << self
end

def self.all
    @@all 
end

def nickname
    return @nickname 
end 

def self.weight 
    return @weight 
end 

def self.species 
    return @species 
end 

def zoo 
    @zoo
end

def self.find_by_species(species)
    self.all.select{|animal|animal.species == species}
end






end
