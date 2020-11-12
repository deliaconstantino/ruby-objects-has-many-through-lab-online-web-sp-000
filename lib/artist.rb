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
    binding.pry
    Song.all select do |each_song|
      each_song.artist == self
    end
  end

  def new_song(name, genre)
  end

  def genres
  end

end
