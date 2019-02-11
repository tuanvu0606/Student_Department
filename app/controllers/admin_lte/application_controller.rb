module AdminLte
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    # before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!

    layout :layout_by_resource

    def index
    end

	def home
    end

    private def layout_by_resource
      if devise_controller?
        'layouts/devise'
      else
        'admin_lte/layouts/admin'
      end
    end
  end
end
