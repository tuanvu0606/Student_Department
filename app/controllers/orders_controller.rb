class OrdersController < ApplicationController
  include CurrentOrder
  before_action :set_order
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_order 
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :destroy]  
  before_action :check_valid_update, only: [:update]
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show

  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    
    @order.cookies = cookies[:visited]
    cookies[:visited] = nil   
    @order.save
    binding.pry
    respond_to do |format|
      if @order.update(order_params)
        if user_signed_in? && current_user.admin
          format.html { redirect_to @order, notice: 'Order was successfully updated.' }
          format.json { render :show, status: :ok, location: @order }
        else
          if @order.state == 1
            binding.pry
            format.html { redirect_to order_path, notice: 'Updated'}

          elsif @order.state == 2          
            @order.order_line_items.each do |f|                       
            f.fixed_item_price = f.inventory_item.price
            f.save
            @related_item = InventoryItem.find(f.inventory_item_id)
            @related_item.sold_quantity = @related_item.sold_quantity.to_i + f.order_item_qty.to_i
            @related_item.save
            format.html { redirect_to checkout_path, notice: 'Checkout'}
            # cookies[:order_id] = ""          
          end
          
          # binding.pry
        end          
          # format.html { redirect_to checkout_path, notice: 'Checkout'}
        
        end
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy  
    if @order.id == cookies[:order_id].to_i
      
      @order.order_line_items.each do |f|
        #binding.pry
        @inventory_item = f.inventory_item
        @inventory_item.quantity = @inventory_item.quantity + f.order_item_qty
        @inventory_item.save
      end  
      
      @order.destroy 
      cookies[:order_id] = nil

    end     
    respond_to do |format|
      format.html { redirect_to home_path, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:user_id, :total_amount, :state,order_line_items_attributes: [:id,:order_item_qty])
    end

    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to root_path, notice: "That cart doesn't exist"
    end    

    def check_valid_update
      binding.pry
    end
end
