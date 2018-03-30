class CashRegister
  attr_accessor :total, :items, :discount

  def initialize(apply_discount = 0)
    @total = 0
    @discount = @total + apply_discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
  end

  def apply_discount
    if @discount == @total
      puts "There is no discount to apply"
    else
      @total = @total * 0.8
      puts "After the discount, the total comes to $#{@total}."
      binding.pry
    end
  end

  def items

  end

  def void_last_transaction
    @total = self.total - self.total
  end

end
