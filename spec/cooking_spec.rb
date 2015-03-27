require 'spec_helper'

describe Cooking do

  before :each do
    @cooking = Cooking.new(4)
  end

  describe "#new" do
    it "should create a new Cooking object" do
      expect(@cooking.instance_of?(Cooking)).to be(true)
    end
  end

  describe "#to_liters" do
    it "should convert to liters" do
      expect(@cooking.to_liters).to eql(0.06)
    end
  end

  describe "#to_teaspoons" do
    it "should convert to teaspoons" do
      expect(@cooking.to_teaspoons).to eql(12.2)
    end
  end

  describe "#to_tablespoons" do
    it "should convert to tablespoons" do
      expect(@cooking.to_tablespoons).to eql(4)
    end
  end

  describe "#to_cups" do
    it "should convert to cups" do
      expect(@cooking.to_cups).to eql(0.25)
    end
  end

  describe "#to_pints" do
    it "should convert to pints" do
      expect(@cooking.to_pints).to eql(0.13)
    end
  end

  describe "#to_gallons" do
    it "should convert to gallons" do
      expect(@cooking.to_gallons).to eql(0.02)
    end
  end

end
