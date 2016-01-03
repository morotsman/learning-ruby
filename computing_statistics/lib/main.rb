def get_numbers
  done = false
  numbers = []
  until done
    puts "Enter a number: "
    input = gets.strip
    if input == "done"
      done = true
    else
      numbers << input.to_i
    end
  end
  numbers
end

def avarage(numbers)
  numbers.reduce(0.0){|memo, number| number + memo}/numbers.size
end

def standard_deviation(numbers)
  mean = avarage(numbers)
  Math.sqrt(avarage(numbers.map{ |number| number-mean}.map { |number|  number*number}))
end



numbers = get_numbers


puts "Numbers: #{numbers}"
puts "The avarage is #{avarage(numbers)}"
puts "The minimum is #{numbers.min}"
puts "The maximum is #{numbers.max}"
puts "The standard deviation is #{standard_deviation(numbers)}"