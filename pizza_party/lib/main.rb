def is_integer(string)
  is_integer = Integer(string) rescue false
  if(is_integer)
    true
  else
    false
  end
end

number_of_people = ""
until is_integer(number_of_people)
  puts "How many people?"
  number_of_people = gets.strip
end

number_of_pizza = ""
until is_integer(number_of_pizza)
  puts "How many pizzas do you have?"
  number_of_pizza = gets.strip
end

number_of_slices = ""
until is_integer(number_of_slices)
  puts "How many slices per pizza?"
  number_of_slices = gets.strip
end

slices = number_of_pizza.to_i * number_of_slices.to_i

slices_per_person = slices / number_of_people.to_i
leftover_slices = slices % number_of_people.to_i

puts "Each person gets #{slices_per_person} pieces of pizza."

puts "There are #{leftover_slices} leftover pieces."