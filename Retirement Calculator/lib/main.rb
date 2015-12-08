

puts "What is your current age?"
age = gets
puts "At what age would you like to retire?"
retire_age = gets
years_left = retire_age.strip.to_i - age.strip.to_i
if(years_left < 0)
  puts "You can already retire"
else
  puts "You have #{years_left} years until you can retire.\n It's #{Time.now.year} so you can retire in #{Time.now.year + years_left}"
end