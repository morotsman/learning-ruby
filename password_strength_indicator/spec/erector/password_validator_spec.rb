# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'password_validator'

describe PasswordValidator do
  before(:each) do
    @password_validator = PasswordValidator.new
  end

  it "A very week password contains only numbers and is fewer the eight characters" do
    expect(@password_validator.password_validator("1234567")).to eq :very_week
  end
 
  it "A week password contains only letters and is fewer the eight characters" do
    expect(@password_validator.password_validator("abcdefg")).to eq :week
  end  
  
  it "A normal password contains only numbers and is at least the eight characters" do
    expect(@password_validator.password_validator("12345678")).to eq :normal
  end 
  
  it "A normal password contains only letters and is at least the eight characters" do
    expect(@password_validator.password_validator("abcdefgh")).to eq :normal
  end   
  
  it "A normal password contains letters and at least one number and is fewer then eight characters" do
    expect(@password_validator.password_validator("abcdef8")).to eq :normal
  end   
  
  it "A strong password contains letters and at least one number and at least eight characters" do
    expect(@password_validator.password_validator("abcdefg8")).to eq :strong
  end  
  
  it "A normal password contains special characters and at least eight characters" do
    expect(@password_validator.password_validator("!!!!!!!!")).to eq :normal
  end      
  
  it "A very strong password contains letters, numbers, special characters and at least eight characters" do
    expect(@password_validator.password_validator("abcdef@8")).to eq :very_strong
  end    
  
end

