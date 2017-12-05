# puts "======================================="
# puts "||  Hello. What is your first name?  ||"
# puts "======================================="

# first_name = gets.chomp

# puts "=================================="
# puts "||  Thank you #{first_name}."
# puts "||  What is your last name?"
# puts "=================================="

# last_name = gets.chomp

# puts "================================================="
# puts "||  Welcome #{first_name + " " + last_name} to the ruby playground."
# puts "||  You have exactly #{first_name.length + last_name.length} characters in your name."

# backwards_name = first_name.downcase.reverse.capitalize + " " + last_name.downcase.reverse.capitalize

# puts "||  Spelled backward, your name is #{backwards_name}."
# puts "================================================="

puts "===================================="
puts "|| Please enter your first number ||"
puts "===================================="

first_number = gets.chomp.to_f

puts "====================================="
puts "|| Please enter your second number ||"
puts "====================================="

second_number = gets.chomp.to_f

def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end
def divide(first_number, second_number)
  first_number.to_f / second_number.to_f
end
def subtract(first_number, second_number)
  first_number.to_f - second_number.to_f
end
def add(first_number, second_number)
  first_number.to_f + second_number.to_f
end
def modulo(first_number, second_number)
  first_number.to_f % second_number.to_f
end

puts "What do you want to do? 1) Multiply, 2) Divide, 3) Subtract, 4) Add, or 5) Modulo (find the remainder)?"
operation = gets.chomp.to_i

if  operation == 1
  new_number = multiply(first_number, second_number)
elsif  operation == 2
  new_number = divide(first_number, second_number)
elsif  operation == 3
  new_number = subtract(first_number, second_number)
elsif  operation == 4
  new_number = add(first_number, second_number)
else operation == 5 
  new_number = modulo(first_number, second_number)
end

puts "The result of the operation is #{new_number}"