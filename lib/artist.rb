require 'pry'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

#   extend Memorable::ClassMethods
#   include Memorable::InstanceMethods
# extend Paramable::ClassMethods
#   include Paramable::InstanceMethods
#   extend Findable::ClassMethods
# include Findable::InstanceMethods
   @@artists = []
  attr_accessor :name
  
    def initialize
    #@name = name

    super
    #self.class.all << self
    @songs = []
  end

  def self.all
    @@artists
  end

    def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def 
  self.find_by_name(name)
    @@artists.detect {|a| a.name == name}
  end 

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  def songs
    @songs 
end 
end 