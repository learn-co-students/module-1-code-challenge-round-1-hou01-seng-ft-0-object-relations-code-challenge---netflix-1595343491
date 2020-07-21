class Review 
attr_reader :viewer, :movie, :rating
 @@all = []

 def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
 end

 def self.all
    @@all
 end

 def viewer
    Viewer.all.find {|viewer| viewer.username == @viewer}
 end

 def movie
    Movie.all.find {|movie| movie.title == @movie}
 end



end
