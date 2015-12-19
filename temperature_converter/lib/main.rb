require_relative "converter"

puts "Press C to convert from Fahrenheit to Celsius.\nPress F to convert to Celcius to Fahrenheit.\nYour choice: "
temperature_standard = gets.strip.downcase

message = temperature_standard=="c"?"Please enter the temperature in Fahrenheit.":"Please enter the temperature in Celsius." 
puts message
temperature = gets.strip.to_f
converter = Converter.new(5)
converted_temperature = temperature_standard=="f"?converter.convert_to_fahrenheit(temperature):converter.convert_to_celsius(temperature)
puts "The converted temperature is: #{converted_temperature}"


