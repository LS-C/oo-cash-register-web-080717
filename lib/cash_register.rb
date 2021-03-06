

class CashRegister

    attr_accessor :discount, :total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(item, price, quantity=1)
        @total += price * quantity
        quantity.times { @cart <<item}
        @last_transaction = price*quantity
    end

    def apply_discount
        if @discount > 0
            @total = (@total.to_f * ((100.0-@discount.to_f) / 100.0)).to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
    end
end


    def items
        @cart
    end

    def void_last_transaction
        @total -= @last_transaction
    end




end

