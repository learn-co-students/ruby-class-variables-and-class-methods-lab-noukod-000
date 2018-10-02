class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
      @name, @artist, @genre = name, artist, genre

      @@count += 1

      # unless @@genres.include?(genre)
        @@genres << genre
      # end

      # unless @@artists.include?(artist)
        @@artists << artist
      # end
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
    histogram = {}

    @@genres.uniq.each do |genre|
      histogram[genre] = @@genres.count genre
    end

    histogram
  end

  def self.artist_count
    histogram = {}

    @@artists.uniq.each do |artist|
      histogram[artist] = @@artists.count artist
    end

    histogram
  end
end
