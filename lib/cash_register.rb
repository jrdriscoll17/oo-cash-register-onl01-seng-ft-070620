class CashRegister
  attr_accessor :total, :discount, :title


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @items << self.title
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    #@items += [self] * quantity
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
  #   item_list = []
  #   @items.each do |item|
  #     item_list << item.title
  #   end
  #   item_list
  # end
end
