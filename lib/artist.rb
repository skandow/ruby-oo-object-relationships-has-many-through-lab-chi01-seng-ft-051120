class Artist 

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self  
    end 

    def self.all 
        @@all 
    end 

    def new_song(name, genre)
        Song.new(name, self, genre)
    end 

    def songs
        my_songs = Song.all.select do |song|
            song.artist == self 
        end 
        my_songs 
    end 

    def genres  
        genres_list = songs.collect do |song|
            song.genre 
        end
        genres_list 
    end 

end 