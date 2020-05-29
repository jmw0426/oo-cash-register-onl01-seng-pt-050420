class CashRegister
  attr_accessor :total, :price, :discount, :items, :last_purchase
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = price
  end

  def add_item(title, price, quantity = 1) 
    self.total += price * quantity
      quantity.times do
        items << title
      end
      self.last_purchase = price * quantity
  end
  
  def apply_discount
    if discount != 0
      @total = @total - ((@price * @discount)/100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_purchase
  end

end
