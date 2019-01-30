class Owner
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species 
    @@all << self 
  end 
  
  def say_species
    puts "I am a #{self.species}."
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