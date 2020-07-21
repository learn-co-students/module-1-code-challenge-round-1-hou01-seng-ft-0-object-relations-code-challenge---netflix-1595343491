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
    Review.all.find_all {|r| r.view == self}
  end

  def reviewed_movies
    Review.all.find_all {|r| r.view == self}.map {|r2| r2.mov}
  end

  def reviewed_movie?(movie)
    a = Review.all.map do |r|
      if r.view == self && r.mov == movie
        true
      end
    end
    a.include?(true)
  end

  def rate_movie(movie, rating)
    a = Review.all.find do |r|
      if r.view == self && r.mov == movie
        true
      end
    end
    if a != nil
      a.rate = rating
      else
        Review.new(self, movie, rating)
    end
  end
  
end
