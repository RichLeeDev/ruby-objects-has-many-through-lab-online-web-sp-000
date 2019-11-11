class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
   def artists
    Song.all.map do |song|
      song.artist
    end
  end
end 