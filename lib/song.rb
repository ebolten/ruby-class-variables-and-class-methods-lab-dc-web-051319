class Song

    attr_accessor :name,:artist,:genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@genres << @genre
        @@artists << @artist
        @@count += 1
    end

    #returns count class variable
    def count
        return @@count
    end

    #class method that returns all songs
    def self.count
        return @@count
    end

    #class method that returns unique array of existing songs
    def self.artists
        return @@artists.uniq
    end

    #class method that returns unique array of existing genres
    def self.genres
        return @@genres.uniq
    end

    #returns artists class variable
    def artists
        return @@artists
    end

    #returns class variable genres
    def genres
        return @@genres
    end

    #returns a hash of genres and the number of songs that have those genres
    def self.genre_count
        genre_count = {}

        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        return genre_count
    end

    #returns a hash of genres and the number of songs that have those artists
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        return artist_count
    end
end





