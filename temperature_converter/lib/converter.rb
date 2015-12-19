

class Converter
  

  
  def initialize(precision)
    @number_of_decimals = precision?(precision)
  end
  
  def precision?(precision) 
    rounder = (1..precision).to_a.reduce(1) do |sum| 
      sum*10 
    end
    -> number { (number*rounder).round/Float(rounder)}
  end    
  

  def convert_to_celsius(f)
    result = (f-32.0)*(5.0/9.0)
    @number_of_decimals.call(result)
  end

  def convert_to_fahrenheit(c)
    result = (c*(9.0/5.0)) + 32
    @number_of_decimals.call(result)
  end  
end


