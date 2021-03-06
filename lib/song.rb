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
    new_song.artist_name = artist
    new_song
  end
  
  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
  end
end