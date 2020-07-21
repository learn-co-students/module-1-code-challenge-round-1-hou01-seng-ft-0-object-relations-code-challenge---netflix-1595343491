class Viewer
  attr_accessor :username, :movie, :rating

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def username
    @username
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.select do |m|
      m.viewer == self
    end
  end

  def reviewed_movies
    revs = Review.all.select do |m|
      m.viewer == self
    end
    revs.map do |n|
      n.movie
    end
  end

  def reviewed_movie?(movie)
     movie_names = reviewed_movies.map do |m|
        m.title
     end
     movie_names.include?(movie)
      
  end

  def rate_movie(movie, rating)
      if reviewed_movie?(movie.title) == false
        Review.new(self, movie, rating)
      else
        Review.all.each do |m|
          if m.movie == movie
            if m.viewer == self
              m.rating = rating
            end
          end
        end

      end
  end

end
