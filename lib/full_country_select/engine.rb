Gem.loaded_specs['full_country_select'].dependencies.each do |d|
  require d.name
end

module FullCountrySelect
  class Engine < ::Rails::Engine
    isolate_namespace FullCountrySelect
  end
end
