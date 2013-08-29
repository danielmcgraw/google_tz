$:.push File.expand_path("../lib", __FILE__)
require "google_tz/version"

Gem::Specification.new do |s|
  s.name          = 'google_tz'
  s.version       = GoogleTZ::VERSION
  s.date          = '2013-08-28'
  s.summary       = "Get timezone information for a latitude, longitude, and optional timestamp."
  s.description   = "Get timezone information for a location from the Google Timezone API (https://developers.google.com/maps/documentation/timezone/) using the locations latitude, longitude, and optionally a timestamp."
  s.authors       = ["Daniel McGraw"]
  s.email         = 'dan.j.mcgraw@gmail.com'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.homepage      = 'http://github.com/danielmcgraw/google_tz'
  s.license       = 'MIT'
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

end