def target_heart_rate(age,resting_pulse)
  ->(intensity){(((220-age)-resting_pulse)*intensity)+resting_pulse}
end

puts "Resting puls?"
resting_pulse = gets.strip.to_i
puts "Age?"
age = gets.strip.to_i

calculator = target_heart_rate(age,resting_pulse)

(55..95).
  map{|intensity| [intensity, calculator.call(intensity/100.0).round]}.
  each{|row| print "#{row}\n"}
