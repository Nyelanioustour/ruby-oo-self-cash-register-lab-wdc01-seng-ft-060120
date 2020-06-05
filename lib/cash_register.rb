class CashRegister
attr_accessor :total, :items, :last_total
attr_reader :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @last_total = self.total
        self.total += price*quantity
        quantity.times{self.items << title}

    end

    def apply_discount
        if self.discount != 0
            self.total = (self.total * (1-(discount.to_f/100))).to_i
          "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end 

   def void_last_transaction
    self.total = self.last_total
   end
end

