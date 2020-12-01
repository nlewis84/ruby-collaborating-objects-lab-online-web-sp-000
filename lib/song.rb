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
    new_song = self.new(song)
    new_song.artist = artist
    new_song
  end
end

# file = "Real Estate - Green Aisles - country.mp3"