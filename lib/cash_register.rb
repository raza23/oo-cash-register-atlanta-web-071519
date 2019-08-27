require 'pry'

class CashRegister
    attr_accessor :discount, :total,:items,:last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title,price,quantity = 1)
      @total = self.total + (price * quantity)
      quantity.times do
        items << title
        binding.pry
      end
      self.last_transaction = price * quantity
    end

    def apply_discount
       if discount > 0
        @total = @total - (discount*10)
            "After the discount, the total comes to $#{@total}."
       else
            "There is no discount to apply."
         #binding.pry
       end
    end

    

   
    def void_last_transaction
        self.total = self.total- self.last_transaction
    end



end
