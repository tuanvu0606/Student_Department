class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception, prepend: true
  include CurrentOrder
  # before_action :set_order
  # before_action :record_user_cookies
  #before_action :authenticate_user!, except: [:home, :articles]  
  #helper_method :current_order
  #def current_order
  #  if !session[:order_id].nil?
  #    Order.find(session[:order_id])
  #  else
  #    Order.new
  #  end
  #  binding.pry
  #end
  private
  def record_user_cookies
    if user_signed_in?
      if cookies[:visited] == nil
        cookies[:visited] = ""
        cookies[:visited] = cookies[:visited] + "User:" + current_user.id.to_s + ";" + request.path + ";" + Time.now.in_time_zone("Hanoi").strftime("%m/%d/%y %I:%M %p") + ";"                
      else
        cookies[:visited] = cookies[:visited] + "User:" + current_user.id.to_s + ";" + request.path + ";" + Time.now.in_time_zone("Hanoi").strftime("%m/%d/%y %I:%M %p") + ";"                
      end  
    end
  end
end
