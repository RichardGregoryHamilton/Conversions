require 'spec_helper'

describe Weight do

  before :each do
    @weight = Weight.new(100)
  end

  describe "#new" do
    it "should create a new weight object" do
      expect(@weight.is_a?(Weight)).to be(true)
    end
  end

  describe "#to_grams" do
    it "should convert pounds to grams" do
      expect(@weight.to_grams).to eql(45_359.20)
    end
  end

  describe "#to_miligrams" do
    it "should convert pounds to miligrams" do
      expect(@weight.to_miligrams).to eql(45_359_200)
    end
  end

  describe "#to_ounces" do
    it "should convert pounds to ounces" do
      expect(@weight.to_ounces).to eql(1_600)
    end
  end

  describe "#to_pounds" do
    it "should stay the same" do
      expect(@weight.to_pounds).to eql(100)
    end
  end

  describe "#to_kilograms" do
    it "should convert pounds to kilograms" do
      expect(@weight.to_kilograms).to eql(45.36)
    end
  end

  describe "#to_tons" do
    it "should convert pounds to tons" do
      expect(@pounds.to_tons).to eql(0.05)
    end
  end

end
