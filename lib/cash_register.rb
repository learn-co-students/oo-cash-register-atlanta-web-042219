class CashRegister
	attr_accessor :total, :discount, :items, :last_item_cost, :last_item_quant

	def initialize(obj_discount=nil)
		@total = 0
		@discount = obj_discount
		@items = []
		@last_item_cost = 0
		@last_item_quant = 0
	end

	def add_item(new_item, cost, quant=1)
		for k in 1..quant do
			@items << new_item
		end
		@total += cost*quant
		@last_item_cost = cost
		@last_item_quant = quant
	end
	def apply_discount
		if @discount != nil
			@total *= (100-@discount)*0.01
			"After the discount, the total comes to $#{@total.to_i}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		@items.pop
		@total -= last_item_cost*last_item_quant
	end
end
