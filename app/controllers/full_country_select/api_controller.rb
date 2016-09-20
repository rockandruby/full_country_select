require_dependency "full_country_select/application_controller"

module FullCountrySelect
  class ApiController < ApplicationController
    def get_states
      render json: CS.get(params[:country])
    end

    def get_cities
      render json: CS.get(params[:country], params[:state])
    end
  end
end
