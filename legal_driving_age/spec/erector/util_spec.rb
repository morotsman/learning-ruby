# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'main'
require_relative "../../lib/util"

describe "allowed to drive?" do


  it "not old enough if under 18" do
    expect(allowed_to_drive?(17)).to eq false
  end
  
  it "just old enough if 18" do
    expect(allowed_to_drive?(18)).to eq true
  end
  
  it "old enough if morde then 18" do
    expect(allowed_to_drive?(19)).to eq true
  end  
  
  
end

describe "message" do


  it "should tell if the drive is not old enought to legaly drive" do
    expect(message(false)).to eq "You are not old enought to legaly drive"
  end
  
    it "should tell if the driver is old enought to legaly drive" do
    expect(message(true)).to eq "Your old enought to legaly drive"
  end
  
  
  
end

