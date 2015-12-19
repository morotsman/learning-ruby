# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'converter'

describe Converter do
  


  it "0 F should be converted to -17.77778 C if the precision is 5 decimals" do
    expect(Converter.new(5).convert_to_celsius(0)).to eq -17.77778
  end
  
  it "0 F should be converted to -18 C if the precision is 0 decimals" do
    expect(Converter.new(0).convert_to_celsius(0)).to eq -18
  end  
  
  it "0 F should be converted to -17.8 C if the precision is 1 decimals" do
    expect(Converter.new(1).convert_to_celsius(0)).to eq -17.8
  end  
  
  it "32 F should be converted to 0 C" do
    expect(Converter.new(5).convert_to_celsius(32)).to eq 0
  end  
  
  it "0 C should be converted to 32 F" do
    expect(Converter.new(5).convert_to_fahrenheit(0)).to eq 32
  end
  
  it "17.77778 C should be converted to 32 F" do
    expect(Converter.new(5).convert_to_fahrenheit(-17.77778)).to eq 0.0
  end  
  
  it "11,1234 C should be converted to 52.02212 F" do
    expect(Converter.new(5).convert_to_fahrenheit(11.1234)).to eq 52.02212
  end 
  
  
end

