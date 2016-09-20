$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "full_country_select/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "full_country_select"
  s.version     = FullCountrySelect::VERSION
  s.authors     = ["Igor"]
  s.email       = ["igor12306@mail.ru"]
  s.homepage    = "https://github.com/rockandruby/full_country_select"
  s.summary     = "Country/State/City select list."
  s.description = "Adds dynamic search for countries, states and cities."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
  s.add_dependency "city-state"

  s.add_development_dependency "sqlite3"
end
