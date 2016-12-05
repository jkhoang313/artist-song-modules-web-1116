require 'pry'

class Artist
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :songs

  ARTISTS = []

  def initialize
    super
    @songs = []
  end

  def self.all
    ARTISTS
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
