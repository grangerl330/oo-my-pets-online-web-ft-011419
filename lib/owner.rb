class Owner

  @@all = []
  
  def self.all
    @@all 
  end 
  
  def self.count
    self.all.count
  end 
  
  
end