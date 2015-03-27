class Distance

  attr_accessor :distance, :unit

  def initialize(distance, unit="miles")
    @distance = distance
    @unit = unit
  end

  def to_meters
    case self.unit
      when 'miles'       then (self.distance * 1609.344).round(2)
      when 'kilometers'  then (self.distance * 1000).round(2)
      when 'meters'      then (self.distance).round(2)
      when 'feet'        then (self.distance * 0.3048).round(2)
      when 'inches'      then (self.distance * 0.0254).round(2)
      when 'centimeters' then (self.distance / 100).round(2)
      when 'milimeters'  then (self.distance / 1000).round(2)
    end
  end

  def to_milimeters
    (self.to_meters * 1000).round(2)
  end

  def to_centimeters
    (self.to_meters * 100).round(2)
  end

  def to_inches
    (self.to_meters * 39.3701).round(2)
  end

  def to_feet
    (self.to_meters * 3.28084).round(2)
  end

  def to_km
    (self.to_meters / 1000).round(2)
  end

  def to_miles
    (self.to_meters / 1609.34).round(2)
  end

  alias :to_kilometers :to_km
  alias :to_in :to_inches
  alias :to_cm :to_centimeters
  alias :to_mm :to_milimeters

end
