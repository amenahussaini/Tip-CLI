#App.rb

class MealOrder
    attr_accessor :dish_name
    attr_accessor :dish_price
end

TIP_PERCENTAGE = 10

my_order = MealOrder.new
my_order.dish_name = "Chicken Parm"
my_order.dish_price = 23.95

your_order = MealOrder.new
your_order.dish_name = "Cheese Pizza"
your_order.dish_price = 19.12

def add_total(a, b)
    a + b
end

def total_tip(a,b)
    #total amount with tip included - 
    tip_amount = b.to_f / 100
    return (tip_amount.to_f + b.to_f)
end

pp my_order.dish_name
pp my_order.dish_price

pp your_order.dish_name
pp your_order.dish_price

pp "Total Amount: #{add_total(my_order.dish_price, your_order.dish_price)}"
pp "Total Tip: #{total_tip(200, TIP_PERCENTAGE)}"