require "pry"

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @whole = []
  end

  def add_item(title, price, quantity= 1)
    self.total += price * quantity
    quantity.times do
    @items << title
    @whole << price
    end
  end

  def apply_discount
    if @discount != 0
       dis = (@total * @discount) / 100.0
       self.total = @total - dis.to_i
       "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @whole.last
  end

end
