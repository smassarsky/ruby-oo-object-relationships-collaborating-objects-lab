class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    parsed = filename.split(/ - |.mp3/)
    new_song = self.new(parsed[1])
    new_song.artist = Artist.find_or_create_by_name(parsed[0])
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end