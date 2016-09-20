module FullCountrySelect
  class InstallGenerator < Rails::Generators::Base
    desc 'Mount routes.'
    def mount_routes
      inject_into_file 'config/routes.rb', before: "root" do
        "mount FullCountrySelect::Engine => '/full_country_select'\n"
      end
    end

    desc 'Adds helper to app controller.'

    def add_helper
      inject_into_file 'app/controllers/application_controller.rb', after: "exception" do
        "\nhelper FullCountrySelect::ApiHelper\n"
      end
    end

    desc 'Adds assets.'

    def add_assets
      inject_into_file 'app/assets/javascripts/application.js', after: "jquery_ujs" do
        "\n//= require full_country_select/api\n"
      end
    end
  end
end