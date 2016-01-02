
def get_difficulty_level
  level = 0
  until level >= 1 && level <=3
    puts "Pick a difficulty level (1,2 or 3): "
    level = gets.strip.to_i
  end
  level
end

def think_of_number(difficulty_level)
  if difficulty_level == 1
    1 + rand(10)
  elsif difficulty_level == 2
    1 + rand(100)
  else
    1 + rand(1000)
  end
end

def get_guess
  puts "Guess: "
  gets.strip.to_i
end

def play(number_to_find)
  found_it = false
  number_of_guesses = 0
  until found_it
    number_of_guesses += 1
    guess = get_guess
    if(guess < number_to_find)
      puts "To low"
    elsif(guess > number_to_find)
      puts "To high"
    else
      found_it = true
    end  
  end
  number_of_guesses
end


puts "Let's play Guess the Number"

end_game = false
until end_game
  number  = think_of_number(get_difficulty_level)
  puts "I have my number."
  number_of_guesses = play(number)
  puts "You got it in #{number_of_guesses} guesses."
  puts "Play again?"
  end_game = true if gets.strip == "n" 
end

