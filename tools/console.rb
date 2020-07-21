# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

toy1 = Movie.new("Toy1")
elf = Movie.new("Elf")
rio = Movie.new("Rio")

tom = Viewer.new("Tom")
john = Viewer.new("John")
andy = Viewer.new("Andy")

review1 = Review.new(tom, rio, 7)
review2 = Review.new(andy, toy1, 8)
review3 = Review.new(john, elf, 5)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
