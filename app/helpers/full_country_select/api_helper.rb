module FullCountrySelect
  module ApiHelper
    def get_countries
      CS.get.invert
    end

    def selected_state(obj)
      return {} unless obj.country
      CS.get(obj.country).invert
    end

    def selected_city(obj)
      return {} unless obj.country
      CS.get(obj.country, obj.state).map.with_index{|v, k| [v, k]}
    end

    def country_name(obj)
      CS.get[obj.country.to_sym]
    end

    def state_name(obj)
      CS.get(obj.country)[obj.state.to_sym] if obj.country
    end

    def city_name(obj)
      CS.get(obj.country, obj.state)[obj.city] if obj.country
    end
  end
end
