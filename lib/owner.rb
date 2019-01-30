class Owner
  attr_reader :species 
  attr_accessor :name
  
  @@all = []
  
  def initialize(species)
    @species = species 
    @@all << self 
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count
    self.all.count
  end 
   
  def self.reset_all
    self.all.clear
  end 
  
end