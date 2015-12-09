puts "What is the order amount?"
amount = gets.strip.to_f

puts "What is the state?"
state = gets.strip

A_TAX = 5.5

tax = 0;
if(state == "WI")
  tax = ((A_TAX * amount).ceil)/100.0
  puts "The subtotal is #{amount}"
  puts "The tax is #{tax}" 
end

amount = amount + tax

puts "The total is #{amount}" 
