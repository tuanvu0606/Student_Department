class InventoryItemsController < ApplicationController
  before_action :set_inventory_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]  
  #after_action:increment_model_quantity
  include InventoryModelsHelper

  # GET /inventory_items
  # GET /inventory_items.json
  def index

    if params[:inventory_item]
      @inventory_items = InventoryItem.where('name LIKE ?', "%#{params[:inventory_item]}%").page(params[:page]).per(9)
    else
      @inventory_items = InventoryItem.page(params[:page]).per(9)
    end
    # binding.pry
  end

  # GET /inventory_items/1
  # GET /inventory_items/1.json
  def show
    
  end

  # GET /inventory_items/new
  def new
    @inventory_item = InventoryItem.new
  end

  # GET /inventory_items/1/edit
  def edit
  end

  # POST /inventory_items
  # POST /inventory_items.json
  def create    
    @inventory_item = InventoryItem.new(inventory_item_params)
    
    
    respond_to do |format|
      if @inventory_item.save
        format.html { redirect_to @inventory_item, notice: 'Inventory item was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @inventory_item }
        @related_model = InventoryModel.find_by(inventory_item_params["inventory_model_id"])

        @related_model.increment(:quantity)

        @related_model.save
      else
        format.html { render :new }
        format.json { render json: @inventory_item.errors, status: :unprocessable_entity }
      end  
      #binding.pry
    end
    #@inventory_item.inventory_model.increment(:quantity)
    
  end

  # PATCH/PUT /inventory_items/1
  # PATCH/PUT /inventory_items/1.json
  def update
    respond_to do |format|
      if @inventory_item.update(inventory_item_params)
        format.html { redirect_to @inventory_item, notice: 'Inventory item was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_item }
      else
        format.html { render :edit }
        format.json { render json: @inventory_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_items/1
  # DELETE /inventory_items/1.json
  def destroy
    @inventory_item.destroy
    respond_to do |format|
      format.html { redirect_to inventory_items_url, notice: 'Inventory item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_item
      @inventory_item = InventoryItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_item_params
      params.require(:inventory_item).permit(:name, :price, :description, :warehoused_on, :inventory_item_category_id, :inventory_model_id, :image, :search, :inventory_item)
    end
end