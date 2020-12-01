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
    filename = filename.split(" - ")
    binding.pry
    artist = filename[0] 
    song = filename[1]
    genre = filename[2]
    new_song = self.new(song)
    new_song.artist = artist
    new_song
  end
end

# file = "Real Estate - Green Aisles - country.mp3"