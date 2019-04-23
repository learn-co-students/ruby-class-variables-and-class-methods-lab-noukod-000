class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
    @@genres.map{ |song_genre| song_genre }
    @@genres.uniq
  end
  
  def self.artists
    @@artists.map { |song_artist| song_artist }
    @@artists.uniq
  end
  
  def self.genre_count
    genre_list = {}
    @@genres.each do |genre|
      if genre_list[genre]
        genre_list[genre] += 1
    else
      genre_list[genre] = 1
    end
   end
   genre_list
  end
  
  def self.artist_count
    artist_list = {}
    @@artists.each do |artist_name|
      if artist_list[artist_name]
        artist_list[artist_name] += 1 
      else
        artist_list[artist_name] = 1
      end
    end
    artist_list
  end
  
end