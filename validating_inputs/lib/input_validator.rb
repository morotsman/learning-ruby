class InputValidator
  
  private
  def filled_in?(input)
    input != nil && input != ""
  end

  def minimum_length?(minimum_length, input)
    input.size >= minimum_length
  end
  
  def length?(length, input)
    input.size == length
  end  
  
  def only_digits?(input)
    input !~ /\D/
  end  
  
  def only_letters?(input)
    input[/[a-zA-Z]+/]  == input
  end  

  def validate_first_name(name)
    if !filled_in?(name)
      "The first name must be filled in."
    elsif !minimum_length?(2, name) 
      name + " is not a valid first name. It is too short."
    end
  end
  
  def validate_last_name(name)
    if !filled_in?(name)
      "The last name must be filled in."
    elsif !minimum_length?(2, name) 
      name + " is not a valid last name. It is too short."
    end
  end 
  
  def validate_zip_code(code)
    if !filled_in?(code) || !only_digits?(code)
      "The ZIP code must be numeric."
    end
  end
  
  def validate_employee_id(employee_id)
    if !filled_in?(employee_id) || !length?(7, employee_id) || !only_letters?(employee_id[0,2]) || employee_id[2] != "-" || !only_digits?(employee_id[3,4])
      "#{employee_id} is not a valid ID"
    end
  end

  public
  def validate_input(first_name, last_name, zip_code, employee_id)
    [validate_first_name(first_name), validate_last_name(last_name), validate_zip_code(zip_code), validate_employee_id(employee_id)].select{|i| i != nil}
  end
  
end
