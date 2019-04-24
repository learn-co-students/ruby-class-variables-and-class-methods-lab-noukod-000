class Song  
  attr_reader :name,:artist,:genre 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@artists << artist
    @@genres <<  genre
  end 
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.genre_count
    counted = {}
    @@genres.each do |el|
      #counted[el] = 1 unless counted.key?(el)
      if !counted.key?(el)
        counted[el] = 1 
      else 
        counted[el] += 1 
      end
      end 
    counted
  end 
  
  def self.artist_count 
    counted = {}
    @@artists.each do |el|
      if !counted.key?(el)
        counted[el] = 1 
      else
        counted[el] += 1 
      end 
    end 
    counted
  end 
  
end 