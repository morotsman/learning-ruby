# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'input_validator'

describe InputValidator do
  before(:each) do
    @input_validator = InputValidator.new
    @valid_first_name = "ab"
    @valid_last_name = "ab"
    @valid_zip_code = 1
    @valid_employee_id = "AA-1234"
  end

  it "The first name must be filled in." do
    expect(@input_validator.validate_input(nil, @valid_last_name, @valid_zip_code, @valid_employee_id)).to eq ["The first name must be filled in."]
    expect(@input_validator.validate_input("", @valid_last_name, @valid_zip_code, @valid_employee_id)).to eq ["The first name must be filled in."]
  end
  
  it "The first name must be at last two characters." do
    expect(@input_validator.validate_input("a", @valid_last_name, @valid_zip_code, @valid_employee_id)).to eq ["a is not a valid first name. It is too short."]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, @valid_employee_id)).to eq []
  end  
  
  it "The last name must be filled in." do
    expect(@input_validator.validate_input(@valid_first_name, nil, @valid_zip_code, @valid_employee_id)).to eq ["The last name must be filled in."]
    expect(@input_validator.validate_input(@valid_first_name, "", @valid_zip_code, @valid_employee_id)).to eq ["The last name must be filled in."]
  end
  
  it "The last name must be at last two characters." do
    expect(@input_validator.validate_input(@valid_first_name, "a", @valid_zip_code, @valid_employee_id)).to eq ["a is not a valid last name. It is too short."]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, @valid_employee_id)).to eq []
  end
  
  it "The zip code must be numeric." do
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, nil, @valid_employee_id)).to eq ["The ZIP code must be numeric."]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, "", @valid_employee_id)).to eq ["The ZIP code must be numeric."]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, "1a", @valid_employee_id)).to eq ["The ZIP code must be numeric."]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, @valid_employee_id)).to eq []
  end  

  it "An empluee IS is in the format AA-1234. So, two letters, a hyphen, and four numbers." do
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, nil)).to eq [" is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "")).to eq [" is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "a")).to eq ["a is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa")).to eq ["aa is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa-")).to eq ["aa- is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa-1")).to eq ["aa-1 is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa-12")).to eq ["aa-12 is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa-123")).to eq ["aa-123 is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa-12345")).to eq ["aa-12345 is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "1a-1234")).to eq ["1a-1234 is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "a1-1234")).to eq ["a1-1234 is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa-a234")).to eq ["aa-a234 is not a valid ID"]
    expect(@input_validator.validate_input(@valid_first_name, @valid_last_name, @valid_zip_code, "aa-123a")).to eq ["aa-123a is not a valid ID"]
  end    
  
end

