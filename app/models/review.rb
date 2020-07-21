class Review
    attr_accessor :rating
    @@all = []
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end

    def rating
        @rating
    end

    def self.all
        @@all
    end

    def viewer
        @viewer
    end

    def movie
        @movie
    end

end
