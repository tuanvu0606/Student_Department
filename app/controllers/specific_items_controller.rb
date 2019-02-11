class SpecificItemsController < ApplicationController
  helper_method :some_method
  before_action :set_specific_item, only: [:show, :edit, :update, :destroy]
  #after_action :increase_inventory_item
  before_action :authenticate_user!
  before_action do 
  redirect_to new_user_session_path unless current_user && current_user.admin?
  end
  def index
    @grid = SpecificItemsGrid.new(grid_params) do |scope|
      scope.page(params[:page])
    end
  end

  def show

  end

  # GET /specific_items/new
  def new
    @specific_item = SpecificItem.new
  end

  # GET /specific_items/1/edit
  def edit

  end

  # POST /specific_items
  # POST /specific_items.json
  def create
    @specific_item = SpecificItem.new(specific_item_params)

    respond_to do |format|
      if @specific_item.save
        format.html { redirect_to @specific_item, notice: 'Specific item was successfully created.' }
        format.json { render :show, status: :created, location: @specific_item }
      else
        format.html { render :new }
        format.json { render json: @specific_item.errors, status: :unprocessable_entity }
      end      
    end    
    increase_inventory_item(@specific_item)
    binding.pry
  end

  # PATCH/PUT /specific_items/1
  # PATCH/PUT /specific_items/1.json
  def update
    respond_to do |format|
      if @specific_item.update(specific_item_params)
        format.html { redirect_to @specific_item, notice: 'Specific item was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific_item }
      else
        format.html { render :edit }
        format.json { render json: @specific_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_items/1
  # DELETE /specific_items/1.json
  def destroy
    @specific_item.destroy
    respond_to do |format|
      format.html { redirect_to specific_items_url, notice: 'Specific item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  def grid_params
    params.fetch(:specific_items_grid, {}).permit!
  end
  #before_action :authenticate_admin!  
  # GET /specific_items
  # GET /specific_items.json

  # GET /specific_items/1
  # GET /specific_items/1.json


    # Use callbacks to share common setup or constraints between actions.
    def set_specific_item
      @specific_item = SpecificItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_item_params
      params.require(:specific_item).permit(:inventory_item_id, :serial_number, :inventory_item)
    end

    def increase_inventory_item(specific_item)
      inventory_item = InventoryItem.find(specific_item.inventory_item_id.to_s)
      inventory_item.increment(:quantity)
      inventory_item.save
      #binding.pry
    end
end
