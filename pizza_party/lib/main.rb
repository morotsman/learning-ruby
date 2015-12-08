def is_integer(string)
  isInteger = Integer(string) rescue false
  if(isInteger)
    true
  else
    false
  end
end

number_of_people = ""
until is_integer(number_of_people)
  puts "How many people?"
  number_of_people = gets.strip.to_i
end

number_of_pizza = ""
until is_integer(number_of_pizza)
  puts "How many pizzas do you have?"
  number_of_pizza = gets.strip.to_i
end

number_of_slices = ""
until is_integer(number_of_slices)
  puts "How many slices per pizza?"
  number_of_slices = gets.strip.to_i
end

slices = number_of_pizza * number_of_slices

slices_per_person = slices / number_of_people
leftover_slices = slices % number_of_people

puts "Each person gets #{slices_per_person} pieces of pizza."

puts "There are #{leftover_slices} leftover pieces."