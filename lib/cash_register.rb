require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items



    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total 
    end

    
    def add_item(title, price, quantity=1)
        @total += price * quantity
    end

    def apply_discount
        if discount != 0
        @total = (total/100.0)*80.to_i
        "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items(item, price)
        binding.pry
       @items << item
       items
    end

    def void_last_transaction

    end 

end