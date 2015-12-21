require_relative "tax_calculator"

puts "What is the order amount?"
amount = gets.strip.to_f
puts "What state do you live in?"
state = gets.strip
county = if(state.downcase == "wisconsin")
  puts "What county do you live in?"
  gets.strip
end
total, tax = TaxCalculator.calculate(amount, state, county)
puts "The tax is #{tax}.\nThe total is #{total}."
