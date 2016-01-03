
contestants = []

quit = false
until quit 
  puts "Enter a name:"
  contestant = gets.strip
  contestants << contestant if contestant != ""
  quit = true if contestant == ""
end

puts contestants[rand(contestants.size)]
