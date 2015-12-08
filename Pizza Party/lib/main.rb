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
