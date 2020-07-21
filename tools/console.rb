# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

moov1 = Movie.new("Drift")
moov2 = Movie.new("Shrek")
moov3 = Movie.new("Home Alone")

view1 = Viewer.new("Ted123")
view2 = Viewer.new("Ryan123")
view3 = Viewer.new("Rocky123")

revu1 = Review.new(view1,moov1,6)
revu2 = Review.new(view2,moov2,10)
revu3 = Review.new(view3,moov3,4)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
