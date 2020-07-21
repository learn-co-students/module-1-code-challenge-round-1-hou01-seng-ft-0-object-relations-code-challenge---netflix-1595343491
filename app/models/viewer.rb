class Viewer
  attr_accessor :username, :movie

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def viewer
    Review.all.find_all{|index| index.viewer == self}
  end

  def reviewed_movies
    self.viewer.map{|index| index.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end
  
  def rate_movie(movie,rating)
    if self.reviewed_movie?(movie)
      Review.all.find do |index| index.movie == movie
        index.rating = rating
      end
    else
      Review.new(self,movie,rating)
    end
  end

end
