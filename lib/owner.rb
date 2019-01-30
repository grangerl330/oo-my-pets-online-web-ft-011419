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
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end 
  
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end 
  
  def sell_pets
  
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