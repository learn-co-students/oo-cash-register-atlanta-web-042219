require "pry"
class CashRegister
    attr_accessor :cart, :discount, :total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
        @last_transaction = 0
        @last_quantity = 0
    end
    
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @last_transaction = price * quantity
        @last_quantity = quantity
        quantity.times { self.cart << title }
    end

    def apply_discount
        if @discount != 0
            @total = @total * 0.8
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        @total -= @last_transaction
        @last_quantity.times {@cart.pop}
    end
end
