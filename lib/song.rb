require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  attr_accessor :name
  attr_reader :artist

  SONGS = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    SONGS
  end
end
