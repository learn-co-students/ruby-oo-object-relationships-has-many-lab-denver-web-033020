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
 
    # objective : when .artist is applied to song instance,  in whic take a song instance and add artist instance to it
    # update artist method in class Song
        # song in argument #<Song:0x00007fffee6a66e8 @name="Hello">
        # you are updating the value of artist as self
            #self = #<Artist:0x00007fffd209c570 @name="Adele">
        # desired output 
            #song  #<Song:0x00007fffc3f64788 @artist=#<Artist:0x00007fffc3f64850 @name="Adele">, @name="Hello"> 
    # song has already been instantiated


    def add_song(song)
        song.artist = self
    end
    # song has not been created yet so do that first with the song name. 
    # THEN, add artist instance to that song instance. 
    #name "Rolling in the Deep"
    #desired output
    #=> #<Song:0x00007fffea2761d0 @artist=#<Artist:0x00007fffea276298 @name="Adele">, @name="Rolling in the Deep">
    
    def add_song_by_name(name)
        #binding.pry
      song = Song.new(name)
      song.artist = self
    end
    


    def songs
      Song.all.select {|song| song.artist == self}
    end
 # go through all of hte existing artist and count the songs that the artist wrote 
    def self.song_count
      Song.all.count

    end
  end