class State
  
  def initialize(amount)
    @amount = amount
  end  
  
  def total
    @amount + tax
  end
  
  def tax
    0
  end
  
end

class Wisconsin < State
  
  @@tax_table = Hash.new(0.05)
  @@tax_table["eau clair"] = 0.055
  @@tax_table["dunn"] = 0.054  
  
  def initialize(amount, county)
    super(amount)
    @county = county.downcase
  end
  
  def tax
    @amount*@@tax_table[@county]
  end
  
end

class Illinois < State
  
  TAX = 0.08
  
  def initialize(amount)
    super(amount)
  end  
  
  def tax
    @amount*TAX
  end
  
end



class TaxCalculator
  
  def self.calculate(amount, name_of_state, county = nil)
    state = if(name_of_state.downcase == "wisconsin")
      Wisconsin.new(amount, county)
    elsif(name_of_state.downcase == "illinois")
      Illinois.new(amount)
    else
      State.new(amount)
    end
    
    return state.total, state.tax
  end
  
end


