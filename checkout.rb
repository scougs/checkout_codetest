class Checkout

  attr_accessor :basket, :price, :deals

  def initialize
    @basket = Hash.new
    @price = 0

    @deals = {
      "fr1" => ["bogof"],
      "sr1" => ["bulk_buy", 3, 4.50]
    }
  end


  def scan(product)
    @basket[product] ? (@basket[product] += 1) : (@basket[product] = 1)
    puts "#{@basket}"
  end
  

  def total

    @basket.each do |product, quantity|

      if @deals.has_key?("product.code")

        if @deals["product.code"][0] = "bogof"
          @price += ( (quanity/2) + (quanity%2) ) * quantity 
        else
          @deals["product.code"][2] >= quantity ? (@price += @deals["product.code"][3] * quantity) : (@price += product.price * quantity)
        end

      else
        @price += (product.price * quantity)/100
      end

    end

    puts "Total price: #{@price}"
  end


  def total_two
    @basket.inject(0) do |sum, (product, quantity)|
      subtotal=(product.price * quantity)/100
      puts "#{quantity} x #{product.name} @ #{product.price/100} = #{subtotal}"
      sum += subtotal
    end
  end


  def check_for_deal ()

  end


  def bogof(quantity)
    @basket[item] ? (@basket[item] += 1) : (@basket[item] = 1)
  end
  
end