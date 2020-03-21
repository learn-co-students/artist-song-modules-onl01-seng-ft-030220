require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods 
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
   @@songs
  end

  def self.count
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end

end
