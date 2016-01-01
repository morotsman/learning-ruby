

def get_numbers(number)
  number.times.map do|i|
    puts "Enter a number: "
    gets.strip.to_i
  end
end

sum = get_numbers(5).reduce(0){|memo, n| memo + n}

puts "The total is #{sum}"
