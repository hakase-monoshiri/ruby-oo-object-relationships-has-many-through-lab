class Genre

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{|individual_song| individual_song.genre == self}
    end

    def artists
        artists_list = []
        songs.each do |individual_song|
            artists_list << individual_song.artist
        end
        artists_list.uniq
    end




end