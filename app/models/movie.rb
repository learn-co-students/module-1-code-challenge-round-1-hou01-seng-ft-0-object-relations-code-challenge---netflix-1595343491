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
    Review.all.find_all {|r| r.mov == self}
  end

  def viewers
    Review.all.find_all {|r| r.mov == self}.map {|r2| r2.view}
  end

  def average_rating
    a = Review.all.find_all {|r| r.mov == self}.map {|r2| r2.rate}
    a.sum.to_f/a.length
  end

  def self.highest_rated
    a = Review.all.map {|r| [r.mov, r.mov.average_rating]}.uniq.to_h
    b = a.values.max
    c = a.find_all {|m| m[1] == b}.to_h
    c.keys
  end


end
