class CashRegister

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

   def total=(total)
     @total = total
   end

   def total
     @total
   end

   def items
     @items
   end

   def discount
     @discount
   end

  def add_item(item, amount, quantity=1)
    quantity.times{@items.push(item)}
    @prices.push(amount*quantity)
    @total += amount * quantity

  end

    def apply_discount
     @total *= (1-(@discount/100.0))
      +    if @discount == 0
       "There is no discount to apply."
    else
       "After the discount, the total comes to $#{@total.round}."
     end
   end


  def void_last_transaction
    @total -= @prices.last
  end

 end
