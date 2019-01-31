class InventoryItemCategoriesController < ApplicationController
  before_action :set_inventory_item_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]  
  # GET /inventory_item_categories
  # GET /inventory_item_categories.json
  def index
    @inventory_item_categories = InventoryItemCategory.all
  end

  # GET /inventory_item_categories/1
  # GET /inventory_item_categories/1.json
  def show
    
  end

  # GET /inventory_item_categories/new
  def new
    @inventory_item_category = InventoryItemCategory.new
  end

  # GET /inventory_item_categories/1/edit
  def edit
  end

  # POST /inventory_item_categories
  # POST /inventory_item_categories.json
  def create
    @inventory_item_category = InventoryItemCategory.new(inventory_item_category_params)

    respond_to do |format|
      if @inventory_item_category.save
        format.html { redirect_to @inventory_item_category, notice: 'Inventory item category was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_item_category }
      else
        format.html { render :new }
        format.json { render json: @inventory_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_item_categories/1
  # PATCH/PUT /inventory_item_categories/1.json
  def update
    respond_to do |format|
      if @inventory_item_category.update(inventory_item_category_params)
        format.html { redirect_to @inventory_item_category, notice: 'Inventory item category was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_item_category }
      else
        format.html { render :edit }
        format.json { render json: @inventory_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_item_categories/1
  # DELETE /inventory_item_categories/1.json
  def destroy
    @inventory_item_category.destroy
    respond_to do |format|
      format.html { redirect_to inventory_item_categories_url, notice: 'Inventory item category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_item_category
      @inventory_item_category = InventoryItemCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_item_category_params
      params.require(:inventory_item_category).permit(:category_name, :image)
    end
end
