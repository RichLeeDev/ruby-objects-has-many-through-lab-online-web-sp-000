class Song
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def initialize(name, artist, genre)
   @name = name
   @artist = artist 
   @genre = genre 
  save
  end
  
  def save 
    @@all << self
  end
  
  
end 