employees = ["John Smith", "Jackie Jackson", "Chris Jones", "Amanda Cullen", "Jeremy Goodwin"]

puts "There are #{employees.size} employees: #{employees}"

puts "Enter an employee name to remove:"
employee = gets.strip
employees = employees.select { |item| item != employee }

puts "There are #{employees.size} employees: #{employees}"
