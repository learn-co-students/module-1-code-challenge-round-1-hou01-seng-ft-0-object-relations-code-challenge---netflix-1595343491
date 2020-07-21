# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movies
spirited_away = Movie.new("Spirited Away")
howls_moving_castle = Movie.new("Howl's Moving Castle")
kikis_delivery_service = Movie.new("Kiki's Delivery Service")
princess_mononoke = Movie.new("Princess Mononoke")

#viewers

john = Viewer.new("John")
meghann = Viewer.new("Meghann")
spencer = Viewer.new("Spencer")
shawn = Viewer.new("Shawn")

#reviews

review1 = Review.new(john,spirited_away,10)
review2 = Review.new(meghann,howls_moving_castle,9)
review3 = Review.new(spencer,kikis_delivery_service,8)
review4 = Review.new(shawn,princess_mononoke,7)
review5 = Review.new(shawn,spirited_away,6)
review6 = Review.new(meghann,spirited_away,7)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
