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

amount_from = get_number_from_prompt("How many euros are you exchanging?")
rate = get_number_from_prompt("What is the exchange rate?")
amount_to = ((amount_from * rate).floor)/100.0

puts "#{amount_from} euros at an exchange rate of #{rate} is #{amount_to} U.S. dollars."

