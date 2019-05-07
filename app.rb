# ============================== Methods ===================================

#  calculates square root
def square_root(input)
  Math.sqrt(input)
end

# calculates to the power of n
def power(input1, input2)
  input1 ** input2
end

# calculates BMI using imperial system
def bmi_imperials
  puts "What is your weight in pounds?"
  weight = gets.chomp.to_f

  puts "What is your height in inches?"
  height = gets.chomp.to_f

  bmi = (weight / power(height, height)) * 703
  bmi_range(bmi)
end

#  calculates BMI using metric system
def bmi_metrics
  puts "What is your weight in Kg?"
  weight = gets.chomp.to_f

  puts "What is your height in meters?"
  height = gets.chomp.to_f

  bmi = weight / power(height, height)
  bmi_range(bmi)
end

# displays correct weight in relation to BMI
def bmi_range(bmi)
  puts "Your BMI is: #{bmi}"

  if bmi < 15
    puts "You're very severely underweight, EAT ALL THE FOOD!!!"
  elsif bmi < 16
    puts "You're severely underweight, EAT SOME PIZZA!!!!"
  elsif bmi < 18.5
    puts "You're underweight, EAT SOME CAKE!!!!"
  elsif bmi < 25
    puts "You're normal and healthy!! Well done!!!!"
  elsif bmi < 30
    puts "You're overweight, time to hit the gym!!!!"
  elsif bmi < 35
    puts "You're moderately obese, fix that diet!"
  elsif bmi < 40
    puts "You're severely obese, RUN FOREST RUN!!!!"
  elsif bmi < 45
    puts "You're very severely obese, time for lypo?"
  elsif bmi < 50
    puts "You're morbidly obese, Death is a comin!!!!"
  elsif bmi < 60
    puts "You're super obese, not as cool as it sounds!"
  else
    puts "HYPER OBESE?! Dude how are you even alive?"
  end
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

#  will loop the program until user wants to quit
begin
  puts "Would you like to do basic calculations(1) or advanced(2)? Or do you want to calculate BMI(3)?"
  choice = gets.chomp.to_i

  if choice == 1
    basic_calculations()
  elsif choice == 2
    advanced_calculations()
  elsif choice == 3
    option = false

    # will continue to ask until user gives a correct option
    until option == true
      puts "Do you want to calculate in metrics(1) or imperials?(2)"
      bmi_choice = gets.chomp.to_i

      if bmi_choice == 1
        result = bmi_metrics()
        option = true
      elsif bmi_choice == 2
        result = bmi_imperials()
        option = true
      else
        puts "incorrect choice!"
      end
    end
  else
    puts "incorrect choice!!"
  end

  # asking user if they want to quit or do another equation
  puts "Would you like to do another calculation? Y/N"
  exit_choice = gets.chomp.upcase!

  if exit_choice == "Y"
    quit = false
  else
    quit == true
  end

end while quit == false
