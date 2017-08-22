require 'pry'
require 'colorize'

@main_dish = [
{ dish:"Pizza", cost: 4.25 },
{ dish:"Chicken Nuggets", cost: 3.65 },
{ dish:"Salad", cost: 3.99 }
  ]
@side_dish = [
  { side:"French Fries", cost: 2.22 },
  { side:"Carrots", cost: 1.65 },
  { side:"Fruit cup", cost: 1.89}
]
@order = []

def main_menu
  @main_dish.each_with_index do |key, index|
  puts "#{index + 1}. #{key[:dish]} = #{key[:cost]}".colorize(:green)
  end
  puts ""
  puts "What will be your main dish?".colorize(:light_blue)
  input = gets.strip
  case input
    when '1'
      @order.push(@main_dish[0])
      first_side_dish
    when '2'
      @order.push(@main_dish[1])
      first_side_dish
    when '3'
      @order.push(@main_dish[2])
      first_side_dish
  end
end

def first_side_dish
  puts "What would you like for your first side dish?".colorize(:cyan)
  @side_dish.each_with_index do |key, index|
    puts "#{index + 1}. #{key[:side]} = #{key[:cost]}".colorize(:green)
    end
    input = gets.strip
    case input
      when '1'
        @order.push(@side_dish[0])
        second_side_dish
      when '2'
        @order.push(@side_dish[1])
          second_side_dish
      when '3'
        @order.push(@side_dish[2])
          second_side_dish
      end
end

def second_side_dish
  puts "What would you like for your second side dish?".colorize(:yellow).on_blue
  @side_dish.each_with_index do |key, index|
    puts "#{index + 1}. #{key[:side]} = #{key[:cost]}".colorize(:green)
    end
    input = gets.strip
    case input
      when '1'
        @order.push(@side_dish[0])
        order
      when '2'
        @order.push(@side_dish[1])
        order
      when '3'
        @order.push(@side_dish[2])
        order
      end
end

def order
  sum = 0.0
  @order.each do |key|
    sum += key[:cost]
    end
    puts "Your total is: $#{sum.round(2)}".colorize(:green)
    puts ""
    puts ""
    puts "Would you like to order again?".colorize(:cyan)
    puts "1: to order again"
    puts "2: quit"
    input = gets.strip
    case input
      when '1'
        main_menu
      when '2'
        exit
    end
end

main_menu
