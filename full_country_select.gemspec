$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "full_country_select/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "full_country_select"
  s.version     = FullCountrySelect::VERSION
  s.authors     = ["Igor"]
  s.email       = ["igor.pogosian@small-team.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FullCountrySelect."
  s.description = "TODO: Description of FullCountrySelect."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
