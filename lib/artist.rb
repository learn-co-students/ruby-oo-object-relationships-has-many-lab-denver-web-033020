# require 'pry'
# class Artist
    
#     attr_accessor :name
    
    
#     def initialize name
#         @name = name
#         @songs = []
#     end
    
#     def songs
#         Song.all.select {|song| song.artist == self}
#     end
    
#     Binding.pry
#    def add_song song
#         @songs << song
#         song.artist = self
#    end

#    def add_song_by_name song_name
#         song = Song.new song_name
#         @songs << song
#         song.artist = self
#    end

#    def songs
#         @songs 
#    end

#    def self.song_count
#         Song.all.count
#    end

# end

class Artist	
    attr_accessor :name	
  
    @@all = []	
  
    def initialize name	
      @name = name	
      @@all << self	
    end	
  
    def self.all	
      @@all	
    end	
  
    def add_song song 	
      song.artist = self	
    end	
  
    def add_song_by_name name 	
      song = Song.new name 	
      song.artist = self	
    end	
  
    def songs	
      Song.all.select {|song| song.artist == self}	
    end	
  
    def self.song_count	
      Song.all.count	
    end	
  end
