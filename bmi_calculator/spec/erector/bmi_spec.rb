# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'bmi'

describe Bmi do


  it "a weight of 75 and a length of 1.80 should result in a bmi of 23" do
    expect(Bmi.new(75,1.80).bmi).to eq 23
  end
end

