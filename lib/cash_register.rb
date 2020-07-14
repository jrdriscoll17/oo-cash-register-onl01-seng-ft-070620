class CashRegister
  attr_accessor :total, :discount, :title
  @@item = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity

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
    item_list = []
    @@items.each do |item|
      item_list << item.title
    end
    item_list
  end
end
