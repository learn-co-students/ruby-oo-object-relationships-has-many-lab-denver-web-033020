class Artist
    attr_accessor :name, :songs
    @@artists = []

    def initialize(name)
        @name = name
        @songs = []
        @@artists << self
      end

    def add_song(song)
        song.artist = self
    end

    def songs
       Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(songName)
        song = Song.new(songName)
        song.artist = self
    end

    def self.get_artists
        @@artists
    end

    def self.song_count
        count = 0
        @@artists.each do |artist|
            artist.songs.each do |song|
                count += 1
            end
        end
        count
    end

end