# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'tax_calculator'


describe TaxCalculator do

  it "Should not calculate tax if not Wisconsin or Illinois" do
    total,tax = TaxCalculator.calculate(100, "Sweden")
    expect(total).to eq 100
    expect(tax).to eq 0
  end
  
  it "Should calculate tax for Illinois at 8%" do
    total,tax = TaxCalculator.calculate(100, "Illinois")
    expect(total).to eq (100 + 100*0.08)
    expect(tax).to eq (100*0.08)
  end  
  
  
  it "Should calculate tax for Wisconsin at 5% if not living in Eau Clair or Dunn county" do
    total,tax = TaxCalculator.calculate(100, "Wisconsin", "Kristianstad")
    expect(total).to eq (100 + 100*0.05)
    expect(tax).to eq (100*0.05)
  end
  
  it "Should calculate tax for Wisconsin at 5.5% if living in Eau Clair" do
    total,tax = TaxCalculator.calculate(100, "Wisconsin", "Eau Clair")
    expect(total).to eq (100 + 100*0.055)
    expect(tax).to eq (100*0.055)
  end  
  
  it "Should calculate tax for Wisconsin at 5.4% if living in Dunn" do
    total,tax = TaxCalculator.calculate(100, "Wisconsin", "Dunn")
    expect(total).to eq (100 + 100*0.054)
    expect(tax).to eq (100*0.054)
  end    
  
end


