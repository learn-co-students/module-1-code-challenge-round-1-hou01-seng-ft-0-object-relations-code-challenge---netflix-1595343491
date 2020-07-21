class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviewed_movie?(movie)
    Review.all.select do |reviews|
     if reviews.viewer == movie
      true
     else
      false
     end
    end
  end

  def rate_movie(movie,rating)
    # we need to iterate over the Review.all (array) to check
    # if Viewer instance (self in this case) and the
    # Movie instance (argument) are associated with each other.
    # IF they are not, then we create Review.new
    # ELSE if Viewer instance (self) has reviewed THIS
    # Movie (argument) then it will assign the new rating 
    # to the existing Review instance.

    # I believe we can use our previous Aggregated method (reviewed_movie?)
    # to meet these conditions.


  def reviewed_movies
    Movie.all
  end

  def reviews
    # binding.pry
    Review.all
  end

  def username
    @username
  end

  def self.all
    @@all
  end
  
end
