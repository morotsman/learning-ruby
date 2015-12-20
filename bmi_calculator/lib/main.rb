require_relative "bmi"


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

weight = get_number_from_prompt("Your weight: ");
height = get_number_from_prompt("Your height ");

puts Bmi.new(weight,height).message


