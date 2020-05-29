class CashRegister
  attr_accessor :total, :discount, :price, :items, :quantities

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1) 
    self.total += price * quantity
      quantity.times do
        items << title
      end
      self.last_purchase = price * quantity
  end

  def apply_discount
    if @discount != 0
      self.total = total - ((price * discount)/100)
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price * @quantities
  end

end
