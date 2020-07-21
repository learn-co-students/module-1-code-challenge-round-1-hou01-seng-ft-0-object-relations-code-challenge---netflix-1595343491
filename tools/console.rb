# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Movie#initialize tests
lion_king = Movie.new("Lion King")

# Movie#title tests
lion_king.title = "Simba"
lion_king.title = "Lion King"
puts lion_king.title

# Movie.all tests
space_jam = Movie.new("Space Jam")

# Viewer#initialize tests
bree = Viewer.new("Bree")
#puts bree.username

# Review#rating tests
rotten_tomatoes = Review.new("Rotten Tomatoes", "Lion King", "Five Stars")
#puts rotten_tomatoes.rating

# Review#all tests
oscar_academy = Review.new("Oscar Academy", "Titanic", "Four Stars")
#puts Review.all

# Review#viewer tests






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
