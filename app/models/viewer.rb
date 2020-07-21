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
    Review.all.find_all{|value|
    value.viewer==self}
  end

  def reviewed_movies
    arr=Review.all.find_all{|value|
    value.viewer==self}
    arr.each{|ele|
    ele.movie}
  end

  def reviewed_movie?(movie)
    titles=[]
    self.reviewed_movies.each{|ele|
    titles.push(ele.movie.title)}
    titles.include? movie.title
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      rated_review=self.reviewed_movies.find{|value|
      value.movie==movie}
      rated_review.rating=rating
    else
      Review.new(self, movie,rating)
    end
  end
end
