require 'pry'
class Artist
@@all = []
  attr_accessor :name
  def initialize(name)
      @name = name
      #  @@all << self
       self.class.all << self
  end

def self.all
  @@all
end

def new_song(name, genre)
   Song.new(name, self, genre)
 end

 def songs
   Song.all.select do |song|
     song.artist == self
   end
 end

 def genres
# Song.all.select do |song|
#   song.genre == self
songs.map do |song|
     song.genre
  end
 end
    # Genre.all.select do |each_song|
    #   each_song.artist == self
    # end


 # def meals
 #     # binding.prydef meals
 #   Meal.all.select do |meal|
 #     meal.waiter == self #checking for waiter now
 #   end
 # end












end
