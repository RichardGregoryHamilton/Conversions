# Conversions
A gem I built that is useful for performing unit conversions

# Installation

run `gem install conversions`

Or add the gem to your gemfile

    gem 'conversions'
    
and run `bundle`

# Use

This gem lets you convert distances, amount of ingredients, temperatures or even weights.

First set up a new instance of what you're trying to convert.

    @temperature = Temperature.new(60)
    
This will automatically create a new temperature object which is initialized to 60 degrees farenheit. If you want to create a
temperature object in celsius, try this instead

    @temperature = Temperature.new(60, "celsius")
    
You can convert a temperature to farenheit or to celcius
    
      @temperature.to_celsius
      @temperature.to_farenheit
        
  ## Distance
  
You can also convert between distances.
  
      @distance = Distance.new(100)
      
Initializes a new distance object for 100 miles. You can specify any unit you want though.

    @distance = Distance.new(100, "meters")
    
If you wanted to learn how many feet that is, you could do
    
    @distance.to_feet
    
## Cooking

This gem is useful if you are building a cooking website. You could convert something from teaspoons to tablespoons for example.

    @cooking = Cooking.new(4)
    
This defaults to 4 tablespoons, but once again, you can specify a unit

    @cooking = Cooking.new(4, "teaspoons")
    
There are a wide variety of methods to convert to. For example, you could try converting to cups.

    @cooking.to_cups
    
## Weight

You can also convert between different units of weight.

First initialize a new weight object.

    @weight = Weight.new(100)
    
This initializes a new weight object set at 100 pounds. But you can specify whichever unit you like.

    @weight = Weight.new(75, "kilograms")
    
You can convert this weight to pounds with

    @weight.to_pounds
