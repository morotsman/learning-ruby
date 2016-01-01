
def is_valid?(input)
  input.to_i != 0
end

def get_rate_of_return
  rate_of_return = "";
  is_valid = false
  until is_valid
    puts "What is the rate of return? "
    rate_of_return = gets.strip
    is_valid = is_valid?(rate_of_return) 
    puts "Sorry. That's not a valid input." if !is_valid
  end
  rate_of_return.to_i
end

puts "It will take #{72/get_rate_of_return} years to double your initial investment."
