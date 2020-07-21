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

    def viewer
        
        #Review.all.select{|x| x == self}
        Review.all.each do |k,v|
            k == self
            
        end
        return @viewer
        

    end

    def movie
        Review.all.each do |k,v|
            k == self
            
        end
        return @movie
    end







end
