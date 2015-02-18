# code artist here
require_relative '../config/environment'
class Artist
  attr_accessor :name, :songs, :genres
  
  @@artists = []


  def initialize
    @songs = []
    @genres = []
    @@artists << self
  end


  def add_song(song)
    self.songs << song
    song.artist = self
    
    if song.genre
      self.genres << song.genre
      song.genre.artists << self unless song.genre.artists.include?(self)
    end
  end


  def self.all
    @@artists
  end


  def self.all=(artists)
    @@artists = artists
  end


  def self.reset_artists
    self.all = []
  end


  def self.count
    self.all.size
  end
end