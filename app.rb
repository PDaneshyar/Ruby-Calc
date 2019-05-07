# ============================== Methods ===================================

#  calculates square root
def square_root(input)
  Math.sqrt(input)
end

# calculates to the power of n
def power(input1, input2)
  input1 ** input2
end

# basic calculations
def basic_calculations
  puts "What operation would you like to do? 1(+), 2(-), 3(*), 4(/), 5(%)"
  operand = gets.chomp.to_i

  puts "What is the first number?"
  input1 = gets.chomp.to_f

  puts "What is the second number?"
  input2 = gets.chomp.to_f

    result = 0;

    case operand
    when 1
      result  = input1 + input2
    when 2
      result = input1 - input2
    when 3
      result = input1 * input2
    when 4
      result = input1 / input2
    when 5
      result = input1 % input2
    end

  puts "The answer is: #{result}"
end

# advanced calculations
def advanced_calculations
  puts "What calculation would you like to do? square root(1), power(2)"
  operand = gets.chomp.to_i

  result = 0
  if operand == 1
    puts "What number do you want the root of?"
    result = square_root(gets.chomp.to_f)
  elsif operand == 2
    puts "What is the first number?"
    input1 = gets.chomp.to_f
    puts "What is the second number?"
    input2 = gets.chomp.to_i
    result = power(input1, input2)
  end

  puts "The answer is: #{result}"
end

# =========================== Main Program ================================

puts "Would you like to do basic calculations(1) or advanced(2)?"
choice = gets.chomp.to_i

if choice == 1
  basic_calculations()
elsif choice == 2
  advanced_calculations()
end
