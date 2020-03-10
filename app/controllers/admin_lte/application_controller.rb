module AdminLte
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    # before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user! 
    before_action :check_admin_user
    layout :layout_by_resource

    # def index
    #   if !current_user.admin?
    #     redirect_to home_path
    #   end
    # end
    private 
      def check_admin_user
        begin
          if !current_user.admin?
            redirect_to home_path
          end
        rescue
          redirect_to home_path
        end
      end
      def layout_by_resource
        if devise_controller?
          'layouts/devise'
        else
          'admin_lte/layouts/admin'
        end
      end
  end
end
