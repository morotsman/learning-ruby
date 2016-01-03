class PasswordGenerator
  
  CHARACTERS = (('a'..'z').to_a << ('A'..'Z').to_a).flatten
  SPECIAL_CHARACTERS = ["!", "@", "#", "€"]
  NUMBERS = (0..9).to_a
  
  def initialize(length, number_of_special_characters, number_of_numbers)
    @number_of_characters = length - number_of_special_characters - number_of_numbers
    @number_of_special_characters = number_of_special_characters
    @number_of_numbers = number_of_numbers
  end
  
  def characters
    @number_of_characters.times.map{|ignore| CHARACTERS[rand(CHARACTERS.size)]}
  end
  
  def special_characters 
    @number_of_special_characters.times.map{|ignore| SPECIAL_CHARACTERS[rand(SPECIAL_CHARACTERS.size)]}
  end
  
  def numbers
    @number_of_numbers.times.map{|ignore| NUMBERS[rand(NUMBERS.size)]}
  end
  
  def generate_password
    (characters << special_characters << numbers).flatten.shuffle.join
  end
  
end

puts "What's the minimum length?"
length = gets.strip.to_i
puts "How many special characters?"
number_of_special_chars = gets.strip.to_i
puts "How many numbers?"
number_of_numbers = gets.strip.to_i

if((length - number_of_special_chars - number_of_numbers) < 0)
  puts "Bad input"
else
  puts "Your password is: #{PasswordGenerator.new(length,number_of_special_chars,number_of_numbers).generate_password}"
end




