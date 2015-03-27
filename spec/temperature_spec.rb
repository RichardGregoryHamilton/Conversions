require 'spec_helper'

describe Temperature do

  before :each do
    @temperature = Temperature.new(56)
  end

  describe "#new" do
    it "should create a new temperature object" do
      expect(@temperature.instance_of?(Temperature)).to be(true)
    end
  end

  describe "#to_farenheit" do
    it "should convert to farenheit" do
      expect(@temperature.to_farenheit).to eql(56)
    end
  end

  describe "#to_celsisus" do
    it "should convert to celsius" do
      expect(@temperature.to_celsius).to eql(13)
    end
  end
end
