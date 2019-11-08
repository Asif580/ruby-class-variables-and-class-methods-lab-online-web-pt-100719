class Song 
  @@count = 0
  @@genres = []
  @@artists = []
 
  attr_accessor :name, :artists, :genres
  
  def initialize(name, artists, genres)
    @name = name
    @artists = artists
    @genres = genres
    @@count += 1
    @@genres << genres
    @@artists << artists
  end 
  
  def self.count
    @@count
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
    end
   end 
   genre_count
  end 
  
   def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end 

 