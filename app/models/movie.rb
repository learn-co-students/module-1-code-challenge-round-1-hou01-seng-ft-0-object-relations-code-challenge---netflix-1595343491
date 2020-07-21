class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def average_rating
    ratings_array = Review.all.find_all{|index| index.movie == self}.map{|index| index.rating}
    ratings_array.sum / ratings_array.length.to_f
  end

  def self.all
    @@all
  end

  def self.highest_rated
    Review.all.max_by{|index| index.movie.average_rating}.movie
  end
end
