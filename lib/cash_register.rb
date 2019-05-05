require 'pry'

class CashRegister

    attr_accessor :total, :discount



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
        quantity.times {@items << title}
        # binding.pry
        #Go back to Tez
    end

    def apply_discount
        if discount != 0
        @total = (total/100.0)*80.to_i
        "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    
    def items
       @items 
    end

    def void_last_transaction
        @total -= self.total #uses the value of the last transaction to subtract from the current
                             #total
        # binding.pry

    end 

end