#App.rb

class MealOrder
    attr_accessor :dish_name
    attr_accessor :dish_price

    def initialize(dish_name, dish_price)
        @dish_name = dish_name
        @dish_price = dish_price
    end
end

receipt = []
order_total = 0


print "\nHow many items including drinks did you order?"
number_of_dishes = gets.chomp.to_i

if number_of_dishes <= 0
    puts "Please enter a valid number of dishes."
    exit
end

puts "\nThank you for eating with us. 
\nPlease enter the dish(es) you ordered. 
\nExample: 'Chicken Taco'."

number_of_dishes.times do |i|
    print "\n#{i + 1}. Enter Dish Name:"
    name = gets.chomp.capitalize

    print "#{i + 1}. Price of #{name} Dish (Numbers Only):"
    number = gets.chomp.to_f

    receipt << MealOrder.new(name, number)
end

print "\nHow much tip in percentage(%) would you like to add?"
percentage_amount = gets.chomp.to_f

TIP_PERCENTAGE = percentage_amount

if TIP_PERCENTAGE < 0
    puts "\nTip can not be negative."
    exit
end
puts "\n\nFINAL BILL:"

receipt.each do |meal|
    puts "#{meal.dish_name} - $#{meal.dish_price.round(2)}"
    order_total += meal.dish_price
end

puts "\nTotal Without Tip: $#{order_total.round(2)}"
tip_amount = order_total * TIP_PERCENTAGE / 100.0
puts "Tip (#{TIP_PERCENTAGE}%): $#{tip_amount.round(2)}"
puts "Total With Tip: $#{(order_total + tip_amount).round(2)}"
