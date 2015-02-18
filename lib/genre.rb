# code genre here
require_relative '../config/environment'

class Genre
  attr_accessor :name, :songs, :artists
  @@genres = []
  

  def initialize
    @songs = []
    @artists = []
    @@genres << self #if !@@genres.include?(self)
  end


  def self.all
    @@genres
  end


  def self.all=(genres)
    @@genres = genres
  end

  def self.reset_genres
    self.all = []
  end

  def self.count
    self.all.size
  end
end