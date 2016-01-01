require_relative "input_validator"





puts "Enter first name: "
first_name = gets.strip
puts "Enter last name: "
last_name = gets.strip
puts "Enter the zip code: "
zip_code = gets.strip
puts "Enter an employee ID: "
employee_id = gets.strip

input_validator = InputValidator.new

puts input_validator.validate_input(first_name,last_name,zip_code,employee_id)

