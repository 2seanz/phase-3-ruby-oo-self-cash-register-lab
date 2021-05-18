
#FIRST ATTEMPT
# class CashRegister
#     attr_accessor :type, :discount

#     def initialize( discount = nil)
#         @total = 0
#         @discount = discount
#     end

#     def add_item(title, price, quantity = nil)
#         if(quantity != nil)
#             self.total += (price * quantity)
#         else
#             self.total += price
#         end
#         return self.total
#     end

#     def apply_discount
#         if (@discount != nil)
#             disc = @discount/100.0
#             self.total -= (self.total * disc)
#         return ("After the discount, the total comes to $#{800}.")
#         else
#             return "There is no discount to apply."
#         end
#     end

    # def total=(total)
    #     @total = total
    # end

    # def total
    #     @total
    # end

    # def cash_register_with_discount(discount)
        
    # end
# end


#THE RIGHTT WAYYYYYYY WEYYY
class CashRegister

    attr_reader :discount, :items
    attr_accessor :total, :last_transaction_amount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    # def discount
    #     @discount
    # end

    # def total=(new_total)
    #     @total = new_total
    # end
    
    def add_item(title, price, quantity=1)
        # if (quantity > 1)
            self.total += price * quantity
            #total = .98  1 --> .98
            #total = 5.00 * 3 --> 15.00
        # else
        #     self.total += price
       # end
       # 3.times
       quantity.times do
            self.items << title
        end

        self.last_transaction_amount = price * quantity
    end

        def apply_discount
                # self.total 
                # #self.discount/100.0
                # self.total *  self.discount/100.0
                if (self.discount > 0)
                    self.total -= (self.total * (self.discount/100.0)).to_i

                # item  = 1000
                # discount = 20/100 --> .2
                # actual discount = 100 * .2 --> 200
                # applied discount = 1000 - 200 --> 800
                "After the discount, the total comes to $#{self.total}."
                else 
                    "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction_amount
    end
end