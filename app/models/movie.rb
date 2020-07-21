class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.find_all {|i| i.movie == self}
  end

  def reviewers
    self.reviews.map {|i| i.viewer}
  end

  def average_rating
    array = self.reviews.map {|i| i.rating if i.movie == self}
    rating = array.sum.to_f / array.length
    rating.round(1)
  end

  def self.highest_rated
    movies = Review.all.map {|i| i.movie}
    ratings = movies.uniq.inject(Hash.new(0)) {|h,v| h[v] = v.average_rating; h}
    ratings = ratings.sort_by {|k, v| -v}
    ratings[0][0]
  end
end
