class Bmi
  
  def initialize(weight, height)
    @weight = weight
    @height = height
  end
  
  def bmi
    (@weight/(@height*@height)).round
  end
  
  def message
    if(bmi < 18.5)
      "You are underweight (bmi=#{bmi}). You should see your doctor."
    elsif(bmi > 25)
      "You are overweight (bmi=#{bmi}). You should see your doctor."
    else
      "You are within the ideal weight range (bmi=#{bmi})."
    end
  end
end
