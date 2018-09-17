class Shopping_cart

  def initialize(name)
    @name = name
    @shopping_cart = []
  end

  def add(product)
  @shopping_cart << product
  end

  def remove(product)
    @shopping_cart.each do |item|
      if item == product
        @shopping_cart.delete(product)
        puts "Object has been removed"
        break
      else
        puts "I canno't find this item"
      end
    end
  end

  def add_before_tax
    total_base_price = 0
    @shopping_cart.each do |item|
      total_base_price += item.base_price
    end
    return total_base_price
  end

  def add_after_tax
      total_price = 0
      @shopping_cart.each do |item|
      total_price += item.total_cost
    end
    return total_price
  end

end
