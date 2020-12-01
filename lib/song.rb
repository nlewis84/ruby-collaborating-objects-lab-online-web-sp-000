class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    artist, name, genre = filename.split(" - ")
    new_song = self.new(name)
    new_song.artist.name = artist_name
    new_song
  end
  
  def artist_name=(name)
    name = 
  end
end

# file = "Real Estate - Green Aisles - country.mp3"