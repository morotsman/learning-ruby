# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'converter'

describe Celsius do
  it "0 C should be converted to 32 F" do
    expect(Celsius.new(0).to_farenheit).to eq Farenheit.new(32.0)
  end
  
  it "17.77778 C should be converted to 32 F" do
    expect(Celsius.new(-17.77778).to_farenheit).to eq Farenheit.new(-4.0000000041118255e-06)
  end  
  
  it "11,1234 C should be converted to 52.02212 F" do
    expect(Celsius.new(11.1234).to_farenheit).to eq Farenheit.new(52.02212)
  end 
  
  it "0 C should not be equal to to 0 F" do
    expect(Celsius.new(0).to_farenheit).not_to eq Farenheit.new(0)
  end   
end

describe Farenheit do
  it "0 F should be converted to -17.77778 C if the precision is 5 decimals" do
    expect(Farenheit.new(0).to_celsius).to eq Celsius.new(-17.77777777777778)
  end
  
  it "32 F should be converted to 0 C" do
    expect(Farenheit.new(32).to_celsius).to eq Celsius.new(0)
  end  
  
  it "0 C should not be equal to to 0 F" do
    expect(Farenheit.new(0).to_celsius).not_to eq Celsius.new(0)
  end 
end

describe Converter do
  
  it "0 F should be converted to -17.77778 C if the precision is 5 decimals" do
    expect(Converter.new(5).convert_to_celsius(Farenheit.new(0))).to eq -17.77778
  end
  
  it "0 F should be converted to -17.8 C if the precision is 1 decimals" do
    expect(Converter.new(1).convert_to_celsius(Farenheit.new(0))).to eq -17.8
  end    
  
  it "0 F should be converted to -18 C if the precision is 0 decimals" do
    expect(Converter.new(0).convert_to_celsius(Farenheit.new(0))).to eq -18
  end  
   
  
end

