class Movie
  attr_accessor :title, :rating

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def average_rating
    avg_rating = Review.all.select do |reviews|
      reviews.movie == self
    end

    ratings = avg_rating.map {|rate| rate.ratings }
    rating_average = ratings.sum / ratings.length
  end

  # I seem to be running into an error where it is not 
  # finding my reader/writer method for rating.
  # I believe I am on the right path to get the average
  # however, I believe my instances are messed up somewhere
  # because I have a attr_accessor for rating, which tells me 
  # it probably is throwing an error because it is pointed
  # at the wrong thing.

  def self.highest_rated
  end

  # I believe you can use .max() for this method. 
  # You would take your Review.all and iterate through
  # and pull out your ratings. From here you can assign that array
  # of ratings and .max() to pull your highest value out, which will be your highest_rated.


  def reviews
    Review.all
  end

  def reviewers
    Viewer.all
  end

  def title
   @title
  end

  def self.all
    @@all
  end

end
