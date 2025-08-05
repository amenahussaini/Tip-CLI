#Test_tip.rb

require 'minitest/autorun'
require './app'

class TestTip < Minitest::Test
    def test_meal_order
        meal = MealOrder.new("Burger", 10.50)

        assert_equal "Burger", meal.dish_name
        assert_equal 10.50, meal.dish_price
    end

    def test_order_zero
        number_of_dishes = 0
        assert_equal 0, number_of_dishes
    end
end