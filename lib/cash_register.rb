require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 0)
    @void_price = price
    @title = title
    if quantity == 0
      @total += price
      @items << @title
    else
      @total += (price * quantity)
      quantity.times {@items << @title}
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      new_disc = (@discount.to_f / 100)
      @total -= (@total * new_disc)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

    def items
      @items
    end

    def void_last_transaction
      @total -= @void_price
      @items.pop
    end

  end
