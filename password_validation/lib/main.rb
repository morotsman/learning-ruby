require 'io/console'

users = { "niklas" => "hepp"}


puts "What is your username?"
username = gets.strip 

puts "What is your password?"
password = gets.strip

message = if(users[username] && users[username] == password)
  "Wellcome!"
else
  "I don't know you."
end

puts message

