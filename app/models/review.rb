class Review

    attr_accessor :viewer, :movie, :rating

    @@all = []
  
    def initialize(viewer, movie, rating)
      @viewer = viewer
      @movie = movie
      @rating = rating
      self.class.all << self
    end
  
    def self.all
      @@all
    end

    def viewer(viewer)
        Viewer.all.select {|viewer| Viewer.username == self}
    end

    def movie(title)
        Movie.all.select {|movie| Movie.title == self}
    end

end
