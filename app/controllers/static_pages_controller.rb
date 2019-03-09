class StaticPagesController < ApplicationController
  # before_action :authenticate_user!, only: [:checkout] 
  skip_before_action :verify_authenticity_token 

  def home
  	# @static_pages  = InventoryItem.paginate(page: params[:page], :per_page => 9)
    # binding.pry
    @articles = current_user.student.article.page(params[:page]).per(20)
  	# @inventory_item_categories = InventoryItemCategory.all
   #  #@inventory_models = InventoryModels.all
   #  @order_line_item = @order.order_line_items.new
   #  @best_seller = InventoryItem.find_by(sold_quantity: InventoryItem.maximum(:sold_quantity))    
   #  @looked_item = InventoryItem.find(cookies[:looked_items])
   #    rescue ActiveRecord::RecordNotFound
   #      @looked_item = InventoryItem.find("1")        
   #  # binding.pry
  end

  def help

  # params.permit(:tada, :format  )  

    respond_to do |format|
    # msg = { :status => "ok", :message => "Success!", :html => "lalala" }
    # format.json  { render :json => msg } # don't do msg.to_json

      format.json do
        render json: {
          status: "ok", 
          message: "Success!"    
        }.to_json
      end
    end
    puts params
    # binding.pry
  end

  def about_us
  end

  def contact
  end

  def categories
    @inventory_item_categories = InventoryItemCategory.all
  end

  def student_articles
    
  end

  def set_cookies
    cookies[:user_name]   = "Horst Meier" 
    cookies[:customer_number] = "1234567890" 
  end
  
  def show_cookies
    @user_name    = cookies[:user_name]
    @customer_number = cookies[:customer_number]
  end
  
  def delete_cookies
    cookies.delete :user_name
    cookies.delete :customer_number
  end

  def checkout
    
  end
end