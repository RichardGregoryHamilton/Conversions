Gem::Specification.new do |s|
  s.name        = 'conversions'
  s.version     = '1.0.0'
  s.date        = '2015-03-27'
	s.platform    = Gem::Platform.local
  s.summary     = "Easily convert between different units"
  s.description = "A ruby unit conversion gem"
  s.author      = "Richard Hamilton"
  s.files       = Dir['*.rb'] + Dir['lib/*.rb'] + Dir['spec/*.rb']
  s.license       = 'MIT'
end