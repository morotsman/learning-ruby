

def get_numbers_from_user(nr)
  counter = 0
  numbers = []
  until counter == nr
    puts "Enter number: "
    numbers.push(gets.strip.to_i)
    counter = counter + 1
  end
  numbers
end

numbers =  get_numbers_from_user(3)

max_number = numbers.each.reduce(0){ |m, number| (number>m)?number:m }
puts "The largest number is: #{max_number}"