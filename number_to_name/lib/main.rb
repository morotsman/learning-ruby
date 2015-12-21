months = Hash.new("That month does not exist")
months[1] = "Januari"
months[2] = "Februari"
months[3] = "Mars"
months[4] = "April"
months[5] = "Maj"
months[6] = "Juni"
months[7] = "Juli"
months[8] = "Augusti"
months[9] = "September"
months[10] = "Oktober"
months[11] = "November"
months[12] = "December"



puts "Please enter the number of the month:"
puts months[gets.strip.to_i]
