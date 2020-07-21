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
    Review.all.find_all{|value|
    value.movie==self}
  end

  def reviewers
    arr=Review.all.find_all{|value|
    value.movie==self}
    arr.map{|ele|
    ele.viewer}
  end

  def average_rating
   arr=Review.all.find_all{|value|
    value.movie==self}
    all_rating=[]
    arr.map{|ele|
    all_rating.push(ele.rating)}
    average=all_rating.sum/all_rating.length.to_f
  end

  def self.highest_rated
    all_rating=[]
    Review.all.collect{|ele|
    all_rating.push(ele.rating)}
    id=all_rating.index(all_rating.max)
    Review.all[id].movie
  end
end

