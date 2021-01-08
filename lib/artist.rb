class Artist

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        new_song
    end

    def songs
        Song.all.select{|individual_song| individual_song.artist == self}
    end

    def genres
        genre_list = []
        songs.each do |individual_song|
            genre_list << individual_song.genre
        end
        genre_list.uniq
    end
    


end
