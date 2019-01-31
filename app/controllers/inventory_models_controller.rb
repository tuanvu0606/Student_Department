class InventoryModelsController < ApplicationController
  before_action :set_inventory_model, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]  
  # GET /inventory_models
  # GET /inventory_models.json
  def index
    @inventory_models = InventoryModel.all
  end

  # GET /inventory_models/1
  # GET /inventory_models/1.json
  def show
  end

  # GET /inventory_models/new
  def new
    @inventory_model = InventoryModel.new
  end

  # GET /inventory_models/1/edit
  def edit
  end

  # POST /inventory_models
  # POST /inventory_models.json
  def create
    @inventory_model = InventoryModel.new(inventory_model_params)

    respond_to do |format|
      if @inventory_model.save
        format.html { redirect_to @inventory_model, notice: 'Inventory model was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_model }
      else
        format.html { render :new }
        format.json { render json: @inventory_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_models/1
  # PATCH/PUT /inventory_models/1.json
  def update
    respond_to do |format|
      if @inventory_model.update(inventory_model_params)
        format.html { redirect_to @inventory_model, notice: 'Inventory model was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_model }
      else
        format.html { render :edit }
        format.json { render json: @inventory_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_models/1
  # DELETE /inventory_models/1.json
  def destroy
    @inventory_model.destroy
    respond_to do |format|
      format.html { redirect_to inventory_models_url, notice: 'Inventory model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_model
      @inventory_model = InventoryModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_model_params
      params.require(:inventory_model).permit(:inventory_model_name, :quantity, :image, :sold_quantity)
    end
end
