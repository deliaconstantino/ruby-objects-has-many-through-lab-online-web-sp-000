class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all select do |songs|
      songs.artist == self
    end

  end

  def new_song(song_name, genre)
  end

  def genres
  end

end
