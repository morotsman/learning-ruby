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

principal = get_number_from_prompt("What is the principal amount?");
rate = get_number_from_prompt("What is the rate?");
years = get_number_from_prompt("What is the number of years?");
number = get_number_from_prompt("What is the number of times the interest is computed per year?");

amount = principal*(1 + (rate/100)/number)**(number*years)
amount = ((100*amount).ceil)/100.0

puts amount
