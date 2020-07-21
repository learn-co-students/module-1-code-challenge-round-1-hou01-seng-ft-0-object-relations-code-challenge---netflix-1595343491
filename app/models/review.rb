class Review    #joiner
    attr_reader :viewer, :movie, :rating
    attr_accessor :rating

@@all = []

    def initialize(viewer,movie,rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end

    def movie
        @movie
    end

    def viewer
        @viewer
    end

    def rating
        @rating
    end

    def self.all
        @@all
    end

end
