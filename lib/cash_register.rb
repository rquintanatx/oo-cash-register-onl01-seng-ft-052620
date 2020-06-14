require "pry"

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    while quantity >= 1 
      @items << title 
    end
  end 
  
  def apply_discount
    if @discount > 0
      @total = @total - (@total * @discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def items
    @items
  end
end