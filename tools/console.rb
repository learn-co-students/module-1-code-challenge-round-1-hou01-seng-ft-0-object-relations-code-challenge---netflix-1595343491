# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

shivang = Viewer.new("shivang")
angelo = Viewer.new("angelo")
jeannie = Viewer.new("jeannie")
raul = Viewer.new("raul")


jaws = Movie.new("jaws")
pets = Movie.new("secrete life of pets")
greyhound = Movie.new("greyhound")

r1 = Review.new(shivang, jaws, 4)
r2 = Review.new(angelo, pets, 4)
r3 = Review.new(jeannie, greyhound, 5)
r4 = Review.new(raul, greyhound, 5)
r5 = Review.new(raul, jaws, 5)
r5 = Review.new(angelo, jaws, 5)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
