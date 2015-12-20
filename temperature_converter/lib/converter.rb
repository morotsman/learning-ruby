

class Farenheit
  attr_reader :temperature
  
  def initialize(temperature)
    @temperature = temperature
  end
  
  def to_celsius
    Celsius.new((@temperature-32.0)*(5.0/9.0))
  end
  
  def == (other)
    (self.class == other.class) && (self.temperature == other.temperature)
  end  
end

class Celsius
  attr_reader :temperature
  def initialize(temperature)
    @temperature = temperature
  end
  
  def to_farenheit
    Farenheit.new((@temperature*(9.0/5.0)) + 32)
  end
  
  def == (other)
    (self.class == other.class) && (self.temperature == other.temperature)
  end
end


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
    @number_of_decimals.call(f.to_celsius.temperature)
  end

  def convert_to_fahrenheit(c)
    @number_of_decimals.call(c.to_farenheit.temperature)
  end  
end


