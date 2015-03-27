require 'spec_helper'

describe Distance do

  before :each do
    @distance = Distance.new(477)
  end

  describe "#new" do
    it "returns a new Distance object" do
      expect(@distance.is_a?(Distance)).to be true
    end
  end

  describe "#to_km" do
    it "should convert to kilometers" do
      expect(@distance.to_km).to eql(767.66)
    end
  end

  describe "#to_meters" do
    it "should convert to meters" do
      expect(@distance.to_meters).to eql(767_657.09)
    end
  end

  describe "#to_feet" do
    it "should convert to feet" do
      expect(@distance.to_feet).to eql(2_518_560.09)
    end
  end

  describe "#to_inches" do
    it "should convert to inches" do
      expect(@distance.to_inches).to eql(30_222_720)
    end
  end

  describe "#to_centimeters" do
    it "should convert to centimeters" do
      expect(@distance.to_centimeters).to eql(76_765_709.00)
    end
  end

  describe "#to_milimeters" do
    it "should convert to milimeters" do
      expect(@distance.to_milimeters).to eql(767_657_090.00)
    end
  end

end
