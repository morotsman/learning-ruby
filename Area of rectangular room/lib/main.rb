FEET_TO_METERS = 0.09290304

def is_numeric(string)
  isFloat = Float(string) rescue false
  if(isFloat)
    true
  else
    false
  end
end


length = ""
until is_numeric(length)
  puts "What is the length of the room in feet?"
  length = gets.strip
end

width = ""
until is_numeric(width)
  puts "What is the width of the room in feet?"
  width = gets.strip
end

area_in_feet = length.to_f * width.to_f
area_in_meter = area_in_feet * FEET_TO_METERS
puts "You entered dimensions of #{length} feet by #{width} feet."
puts "The area is \n #{area_in_feet} square feet\n #{area_in_meter} square meters"
