# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new('Bob')
v2 = Viewer.new('Mary')
v3 = Viewer.new('Phil')
v4 = Viewer.new('Clint')
v5 = Viewer.new('Sara')
v6 = Viewer.new('Mike')
v7 = Viewer.new('John')

m1 = Movie.new('Birds')
m2 = Movie.new('Abyss')
m3 = Movie.new('Inception')
m4 = Movie.new('Wall-E')
m5 = Movie.new('Spiderverse')
m6 = Movie.new('Fantastic Mr.Fox')

r1 = Review.new(v1,m1,4)
r2 = Review.new(v2,m2,3)
r3 = Review.new(v3,m1,2)
r4 = Review.new(v4,m3,5)
r5 = Review.new(v5,m4,4)
r6 = Review.new(v6,m5,3.5)
r7 = Review.new(v7,m5,4)
r8 = Review.new(v6,m5,5)
r9 = Review.new(v1,m2,3)
r10 = Review.new(v1,m3,5)
r11 = Review.new(v1,m4,2)
r112 = Review.new(v1,m5,3)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry

