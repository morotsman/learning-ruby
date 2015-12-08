puts "Hello World"

A_FEET_PER_GALLON = 350

def is_float(string)
  is_float = Float(string) rescue false
  if(is_float)
    true
  else
    false
  end
end

def get_number_from_prompt(promt_message)
  result = nil
  until is_float(result)
    puts promt_message
    result = gets.strip
  end 
  result.to_f
end



length =  get_number_from_prompt("Length of room")
width =  get_number_from_prompt("Width of room")
area = (length * width)

gallons = (area/A_FEET_PER_GALLON).ceil

puts "You will need to purchase #{gallons} gallons of paint to cover #{area} square feet."
