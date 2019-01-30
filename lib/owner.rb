class Owner
  attr_reader :species
  @@all = []
  
  def self.all
    @@all 
  end 
  
  def self.count
    self.all.count
  end 
   
  def self.reset_all
    self.all.clear
  end 
  
  def initialize(species)
    @species = species 
    @@all << self 
  end 
    
  
end