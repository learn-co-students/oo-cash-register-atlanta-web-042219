require 'pry'
class CashRegister


attr_accessor :total, :discount, :add_item, :last_transaction

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity=1)
  self.total += price * quantity
  @items << [title] * quantity
  @last_transaction = price * quantity
 end

 def apply_discount
   # binding.pry
   if discount == 0
     return "There is no discount to apply."
   else
    @total = @total - ((@total * @discount) /100)
    return "After the discount, the total comes to $#{@total}."
  end
end

 def items
   @items.flatten
 end

def void_last_transaction
  @total = self.total - self.last_transaction
end

end

# binding.pry
