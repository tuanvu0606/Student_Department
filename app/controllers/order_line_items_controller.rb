class OrderLineItemsController < ApplicationController
  include CurrentOrder
  before_action :set_order_line_item, only: [:show, :edit, :update, :destroy]
  before_action :set_order, only: [:create]
  before_action :authenticate_user!, except: [:show] 

  # GET /order_line_items
  # GET /order_line_items.json
  def index
    @order_line_items = OrderLineItem.all
  end

  # GET /order_line_items/1
  # GET /order_line_items/1.json
  def show
  end

  # GET /order_line_items/new
  def new
    @order_line_item = OrderLineItem.new
  end

  # GET /order_line_items/1/edit
  def edit
  end

  # POST /order_line_items
  # POST /order_line_items.json
  def create
    #order = current_order
    #@order_line_item = OrderLineItem.new(order_line_item_params)
    #@order.save
    #session[:order_id] = @order.id
    inventory_item = InventoryItem.find(params[:inventory_item_id])
    
    if inventory_item.quantity == nil || inventory_item.quantity <= 0
      redirect_to home_path, notice: 'not enough.' 
    else
      
      @order_line_item = @order.add_inventory_item(inventory_item)
      #binding.pry

      inventory_item.quantity = inventory_item.quantity - 1
      inventory_item.save
      #@order_line_item = OrderLineItem.new(order_line_item_params)
      respond_to do |format|
        if @order_line_item.save
          format.html { redirect_to @order_line_item.order, notice: 'Order line item was successfully created.' }
          format.js
          format.json { render :show, status: :created, location: @order_line_item }
        else
          format.html { render :new }
          format.json { render json: @order_line_item.errors, status: :unprocessable_entity }
        end
      end
    end
    #binding.pry
  end

  # PATCH/PUT /order_line_items/1
  # PATCH/PUT /order_line_items/1.json
  def update
    #@order = current_order
    #@order_line_item = @order.order_line_items.find(params[:id])
    #@order_line_item.update_attributes(order_item_params)


    respond_to do |format|
      if @order_line_item.update(order_line_item_params)
        format.html { redirect_to @order_line_item.order, notice: 'Order line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_line_item }
      else
        format.html { render :edit }
        format.json { render json: @order_line_item.errors, status: :unprocessable_entity }
      end
    end

    #@order_line_items = @order.order_line_items
  end

  # DELETE /order_line_items/1
  # DELETE /order_line_items/1.json
  def destroy
    #@order = current_order
    #@order_line_item = @order.order_line_items.find(params[:id])
    #@order_line_item.destroy
    #@order_line_items = @order.order_line_items    
    #binding.pry
    @inventory_item = @order_line_item.inventory_item
    @inventory_item.quantity = @inventory_item.quantity + @order_line_item.order_item_qty
    @inventory_item.save
    @order_line_item.destroy
    respond_to do |format|
      format.html { redirect_to home_url, notice: 'Order line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_line_item
      @order_line_item = OrderLineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_line_item_params
      params.require(:order_line_item).permit(:inventory_item_id, :order_id, :order_item_qty, :total_price, :order_line_item_price, :fixed_item_price)
    end
end
