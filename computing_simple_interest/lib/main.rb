def is_float(string)
  if(Float(string) rescue false)
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

principal = get_number_from_prompt("Enter the principal:")
interest = get_number_from_prompt("Enter the rate of interest:")/100
number_of_years = get_number_from_prompt("Enter the number of years:")
amount = principal*(1 + interest*number_of_years)

puts "After #{number_of_years.to_i} years at #{interest}%, the investment will be worth $#{amount}"
