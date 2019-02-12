module AdminLte
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    # before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user! 

    layout :layout_by_resource

  def index
    if !current_user.admin?
      redirect_to home_path
    end
  end

	def home
    if !current_user.admin?
      redirect_to home_path
    end
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
