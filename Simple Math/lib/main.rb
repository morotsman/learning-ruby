

def input (*messages)
  return messages.map { |message|
    puts message
    gets
  }
end

input1,input2 = input("What is the first number?", "What is the second number?")
firstnumber = input1.strip.to_i
secondnumber = input2.strip.to_i 
sum = firstnumber +  secondnumber
difference = firstnumber -  secondnumber
product = firstnumber *  secondnumber
quotient = firstnumber /  secondnumber
puts "#{firstnumber} + #{secondnumber} = #{sum}\n#{firstnumber} - #{secondnumber} = #{difference}\n#{firstnumber} * #{secondnumber} = #{product}\n#{firstnumber} / #{secondnumber} = #{quotient}\n"
