class Owner
  attr_reader :species 
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
    @species = species 
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
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