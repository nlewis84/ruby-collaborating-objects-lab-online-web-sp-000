class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{path}/*.mp3").map {|file| file.gsub("#{path}/", "") }
  end
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end

    
  end
end

# ["Real Estate - Green Aisles - country.mp3",
# "Real Estate - It's Real - hip-hop.mp3",
# "Action Bronson - Larry Csonka - indie.mp3",
# "Thundercat - For Love I Come - dance.mp3"]

