require 'pry'

require_relative 'product'
require_relative 'deals'
require_relative 'checkout'

fr1 = Product.new("fr1", "Fruit Tea", 3.11)
sr1 = Product.new("sr1", "Strawberies", 5.00)
cf1 = Product.new("cf1", "Coffee", 11.23)



co=Checkout.new
co.scan(fr1)
co.scan(sr1)
co.scan(fr1)
co.scan(cf1)

binding.pry