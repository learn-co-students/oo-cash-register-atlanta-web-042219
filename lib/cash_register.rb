require'pry'

class CashRegister
    attr_accessor :total, :discount, :last_transction, :items 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        
        
    end 

   

    def add_item(title, price, quantity = 1 )
        self.total += price * quantity
        quantity.times {@items << title}
        self.last_transction = price * quantity

    end 

    def apply_discount
        
        if @discount <= 1 
            return "There is no discount to apply."
        else self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            return "After the discount, the total comes to $#{self.total}."
        end 
    end 

    

    def items
       @items
    end 

    def void_last_transaction
        @total -= @last_transction

    end 

    

   


end 
