class CashRegister
  attr_accessor :total, :discount, :title
  @@transactions = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @@transactions << self
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    @items += [self.title] * quantity
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
    @@transactions.last.delete

    if @@transactions.length == 0
      @total = 0.0
    else
      @@transactions.last
    end
  end
end
