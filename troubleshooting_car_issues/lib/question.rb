class Solution
  
  
  def initialize(message)
    @message = message
  end
  
  def ask
    puts @message
  end
  
end



class Question < Solution
  
  
  def initialize(message,
      positive_response = Suggestion.new("Sorry, could not find a solution to your problem."), 
      negative_response = Suggestion.new("Sorry, could not find a solution to your problem."))
    
    super(message)
    @positive_response = positive_response
    @negative_response = negative_response
  end
  
  def ask
    puts @message
    answer = gets.strip 
    if("y" == answer.downcase)
      @positive_response.ask
    else
      @negative_response.ask
    end
  end
  
  
end

class Suggestion < Solution
  def initialize(message)
    super(message)
  end
end

class Expert
  
  def initialize
    in_for_service = Suggestion.new("Get it in for service.")
    choke = Suggestion.new("Check to ensure the choke is opening and closing.")
    fuel_injection = Question.new("Does your care have fuel injection?", in_for_service, choke)
    start_and_die = Question.new("Does the engine start and the die?", fuel_injection)
    spark_plug = Suggestion.new("Check spark plug connections.")
    crank_up = Question.new("Does the car crank up but fail to start", spark_plug, start_and_die)
    replace_battery = Suggestion.new("Replace the battery.")
    clicking_noice = Question.new("Does the car make a clicking noice?", replace_battery, crank_up)
    clean_terminal = Suggestion.new("Clean terminals and try starting again.")
    replace_cables = Suggestion.new("Replace cables and try again.")
    terminals_corroded = Question.new("Are the battery terminals corroded?", clean_terminal, replace_cables)
    @tree = Question.new("Is the car silent when you turn the key?", terminals_corroded, clicking_noice)
  end
  

  

  
  def ask
    @tree.ask
  end
 
  
  
  
end
