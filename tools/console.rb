# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

daniel = Viewer.new("Daniel")
victoria = Viewer.new("Victoria")
jasmine = Viewer.new("Jasmine")

bohemian = Movie.new("Bohemian Rhapsody")
interstellar = Movie.new("Interstellar")
rocketman = Movie.new("Rocketman")
click = Movie.new("Click")
lotr1 = Movie.new("Lord of The Rings, The Fellowship of the Ring")
mamma = Movie.new("Mamma Mia!")


review1 = Review.new(daniel, bohemian, 5)
review2 = Review.new(victoria, interstellar, 0)
review3 = Review.new(jasmine, rocketman, 4)
review4 = Review.new(daniel, click, 4)
review5 = Review.new(daniel, lotr1, 5)
review6 = Review.new(daniel, interstellar, 5)
review7 = Review.new(victoria, lotr1, 4)
review8 = Review.new(jasmine, lotr1, 5)
review9 = Review.new(victoria, mamma, 4)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
