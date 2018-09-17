require_relative 'shopping_cart'

class Products < Shopping_cart

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 1.13
  end

#Reader
def base_price
  @base_price
end

#Writer
def base_price=(base_price)
  @base_price = base_price
end


  def total_cost
    total_cost = @base_price * @tax_rate
    return total_cost
  end
end


spoon = Products.new("spoon", 10)
knife = Products.new("knife", 10)
puts spoon.total_cost

cart1 = Shopping_cart.new("cart1")

cart1.add(spoon)
cart1.add(knife)
puts cart1.inspect
cart1.remove(spoon)
puts cart1.inspect

puts cart1.add_before_tax
puts cart1.add_after_tax
