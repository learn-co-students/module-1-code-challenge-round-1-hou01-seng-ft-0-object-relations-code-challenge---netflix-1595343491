class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def title
    @title
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |m|
      m.movie == self
    end
  end

  def reviewers
    revs = Review.all.select do |m|
      m.movie == self
    end
    revs.map do |n|
      n.viewer
    end
  end

  def average_rating
    revs = Review.all.select do |m|
      m.movie == self
    end
    rev_ratings = revs.map do |r|
      r.rating
    end
    avg_rev = rev_ratings.sum /  rev_ratings.count.to_f

  end

  def self.highest_rated
    highest_average = 0 
    highest_rated_movie = []
    Movie.all.each do |m|
      if m.average_rating > highest_average
        highest_average = m.average_rating
        highest_rated_movie = m
      end
    end
    highest_rated_movie
  end


end
