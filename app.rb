#App.rb

class MealOrder
    attr_accessor :dish_name
    attr_accessor :dish_price

    def initialize(dish_name, dish_price)
        @dish_name = dish_name
        @dish_price = dish_price
    end
end

    what_total = 0
    TIP_PERCENTAGE = 10

receipt = []

3.times do
    print "Enter dish name:"
    name = gets.chomp

    print "Enter price of dish:"
    number = gets.chomp.to_f

    receipt << MealOrder.new(name, number)
end

puts "Final Bill:"

receipt.each do |meal|
    #total_to_integer = contact[:number].to_i
    puts "#{meal.dish_name} - $#{meal.dish_price.round(2)}"
    what_total += meal.dish_price
end

puts "Total without tip: $#{what_total.round(2)}"
tip_amount = what_total * TIP_PERCENTAGE / 100.0
puts "Tip (#{TIP_PERCENTAGE}%): $#{tip_amount.round(2)}"
puts "Total with tip: $#{(what_total + tip_amount).round(2)}"
