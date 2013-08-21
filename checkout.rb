class Checkout

  attr_accessor :basket, :price

  def initialize
    @basket = Hash.new
  end


  def scan(product)
    @basket[product] ? (@basket[product] += 1) : (@basket[product] = 1)
    puts "#{@basket}"
  end
  

  def total
    @basket.inject(0) do |sum, (product, quantity)|
      subtotal=(product.price * quantity)/100
      puts "#{product.name}: #{quantity} @ #{product.price} = #{subtotal}"
      sum += subtotal
    end
  end


  def bogof(quantity)
    @basket[item] ? (@basket[item] += 1) : (@basket[item] = 1)
  end
  
end