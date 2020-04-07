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
    
    #COMMENTS FOR ADD_SONG METHOD
    # context scenario
        # song has already been instantiated with its song name as an attribute 
        # individual song will need to have a reference to the artist it belongs to.
 
    # objective 
        # In class Song, there is an .artist method (attr_accessor :artist).
            # when .artist is applied, it should return @artist attribute (name of artist) of that song. 
            # however, class Song itself does not track any information about the artist. 
                #class Artist does. 
        # Get class Artist and class Song to interact together so each class can get the necessary data and method from each other
            # so they can run their respective duties.
        # Dream method = when we pull in a song instance into class Artist, we will add artist attribute to it.
    appy.artist method to a song, we want the artist instance(contains artist name) to be added.
            # in class Song, we set up initialize method so that each instance of the song will have its song name.
                # song instance in argument #<Song:0x00007fffee6a66e8 @name="Hello">
            # we want to give the attribute of artist to this song. 
                # we are just going to update this method so that song.artist now yields artist instance, which contains name of the artist. 
                    #self = #<Artist:0x00007fffd209c570 @name="Adele">
            # desired output 
                # song instance now as class name, instance id, attribute called artist which contains artist instance, song name. 
                #song  #<Song:0x00007fffc3f64788 @artist=#<Artist:0x00007fffc3f64850 @name="Adele">, @name="Hello"> 
  


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
