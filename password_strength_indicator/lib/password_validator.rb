class PasswordValidator
  
  def only_digits?(password)
    password !~ /\D/
  end
  
  def only_letters?(password)
    password[/[a-zA-Z]+/]  == password
  end
  
  def digits?(password)
    if(password[/[0-9]+/].nil? == true)
      false
    else
      true
    end 
  end    
  
  def letters?(password)
    if(password[/[a-zA-Z]+/].nil? == true)
      false
    else
      true
    end 
  end  
  
  def digits_or_letters?(password) 
    if(password[/[a-zA-Z0-9]+/].nil? == true)
      false
    else
      true
    end  
  end
  
  def special_characters?(password)
    normal = password[/[a-zA-Z0-9]+/]
    if(password[/[a-zA-Z0-9]+/].nil? == true)
        true
    else
        normal.length != password.length
    end
  end
  
  
  def password_validator(password)
    if(password.size() < 8 && only_digits?(password))
      :very_week
    elsif(password.size() < 8 && only_letters?(password))
      :week
    elsif(password.size() >= 8 && digits?(password) && letters?(password) && !special_characters?(password))
      :strong   
    elsif(password.size() >= 8 && digits?(password) && letters?(password) && special_characters?(password))
      :very_strong       
    else
      :normal
    end
  end
end



