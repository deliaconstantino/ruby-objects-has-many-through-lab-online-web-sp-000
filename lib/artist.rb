require 'pry'

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
    Song.all.select do |each_song|
      each_song.artist == self
    end
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def genres
    song_by_self = Song.all.select { |song| song.artist == self }
    song_by_self.collect { |genre| song.genre }

  end

end
