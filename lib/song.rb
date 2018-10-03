class Song

  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
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
    h = {}
    genres.each{|e| h[e] = @@genres.count(e)}
    h
  end

  def self.artist_count
    h = {}
    artists.each{|e| h[e] = @@artists.count(e)}
    h
  end
end
