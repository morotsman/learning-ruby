require_relative 'util'


puts "What is your age?"
age = gets.strip.to_i
puts message(allowed_to_drive?(age))
