class CashRegister
  attr_accessor :total, :discount, :title, :last_transaction_price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    @items += [self.title] * quantity
    @last_transaction_price = price * quantity
  end

  def apply_discount
    if @discount > 0
      @total *= (1 - (@discount.to_f / 100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last_transaction_price
  end
end
