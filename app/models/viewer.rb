class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.find_all {|i| i.viewer == self}
  end

  def reviewed_movies
    self.reviews.map {|i| i.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.reviews.find {|i| i.rating = rating if i.movie == movie}
    else
      Review.new(self, movie, rating)
    end
  end
  
end
