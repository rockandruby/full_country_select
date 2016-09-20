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
  end
end
