def is_integer(string)
  is_integer = Integer(string) rescue false
  if(is_integer)
    true
  else
    false
  end
end

def get_number_from_prompt(promt_message)
  result = nil
  until is_integer(result)
    puts promt_message
    result = gets.strip
  end 
  result.to_i
end

A_TAX_RATE = 0.055


price_item_1 = get_number_from_prompt("Enter price of item 1: ")
quantity_item_1 = get_number_from_prompt("Enter quantity of item 1: ")
price_item_2 = get_number_from_prompt("Enter price of item 2: ")
quantity_item_2 = get_number_from_prompt("Enter quantity of item 2: ")
price_item_3 = get_number_from_prompt("Enter price of item 3: ")
quantity_item_3 = get_number_from_prompt("Enter quantity of item 3: ")

subtotal = (price_item_1*quantity_item_1 + price_item_2*quantity_item_2 + price_item_3*quantity_item_3).to_f
tax = subtotal * A_TAX_RATE
total = subtotal + tax

puts "Subtotal: #{subtotal}"
puts "Tax: #{tax}"
puts "Total: #{total}"
