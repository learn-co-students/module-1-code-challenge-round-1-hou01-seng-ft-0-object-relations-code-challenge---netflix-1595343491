# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

=begin
map { |obj| block } → array
select { |obj| block } → array
find(ifnone = nil) { |obj| block } → obj or nil RETURNS FIRST INSTANCE
find_all Returns all instances of conditonal/block in an array
=end

#Movie Instances
jaws = Movie.new("Jaws")
simpsons = Movie.new("Simpsons Movie")
parasite = Movie.new("Parasite")
#Viewer Instances
jash = Viewer.new("Ja-sh")
mike = Viewer.new("Mike99")
zach = Viewer.new("Zach")
#Review Instances
two_stars = Review.new("Zach", "Jaws", "2 Stars")
three_stars = Review.new("Mike99", "Simpsons Movie", "3 Stars")
five_stars = Review.new("Ja-sh", "Parasite", "5 Stars")

#Review.viewer should return me the viewer for that rating  #=> "Ja-sh"

#Review.movie  return me the movie associated with this rating #=> "Parasite"

#Viewer.reviews should return an array of that viewer's reivews jash.reviews #=> [Array of movies Ja-sh has reviewed]

#Viewer.reviewed_movies return an array of the movies the viewer has reviewed ####

#Movie.reviews returns an array of the movies reviews  parasite.reviews #=> [Array of review instances that Parasite has recieved]

#Movie.reviewers return an array of viewers who left a review on the given movie ####



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
