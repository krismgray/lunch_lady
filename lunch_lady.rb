require 'pry'
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
  puts "#{index + 1}. #{key[:dish]} = #{key[:cost]}"
  end
  puts "What will be your main dish?"
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
  puts "What would you like for your first side dish?"
  @side_dish.each_with_index do |key, index|
    puts "#{index + 1}. #{key[:side]} = #{key[:cost]}"
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
  puts "What would you like for your second side dish?"
  @side_dish.each_with_index do |key, index|
    puts "#{index + 1}. #{key[:side]} = #{key[:cost]}"
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
  @order.each do |key, index|
    arr = [] << key[:cost]

  end
end

main_menu
