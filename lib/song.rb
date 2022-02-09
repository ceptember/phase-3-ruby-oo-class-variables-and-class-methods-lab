class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1  
        @@genres << genre
        @@artists << artist
        
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq 
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_counter = {}
        @@genres.each do |x|
            if genre_counter.keys.include?(x)
                genre_counter[x] +=1
            else 
                genre_counter[x] =1
            end
        end
        genre_counter
    end

    def self.artist_count
        artist_counter = {}
        @@artists.each do |x|
            if artist_counter.keys.include?(x)
                artist_counter[x] +=1
            else
                artist_counter[x] = 1
            end
        end
        artist_counter
    end


end
 