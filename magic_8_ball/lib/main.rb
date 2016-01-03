answer = ["Yes", "No", "Maybe", "Ask again later"]

def random_number 
  rand(3)
end

puts "What's your question?"
gets
puts answer[random_number]
