#App.rb

class MealOrder
    attr_accessor :dish_name
    attr_accessor :dish_price
end

my_order = MealOrder.new
my_order.dish_name = "Chicken Parm"
my_order.dish_price = 23.95

your_order = MealOrder.new
your_order.dish_name = "Cheese Pizza"
your_order.dish_price = 19.12

pp my_order.dish_name
pp my_order.dish_price

pp your_order.dish_name
pp your_order.dish_price