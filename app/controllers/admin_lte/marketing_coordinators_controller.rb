module AdminLte
  class MarketingCoordinatorsController < AdminLte::ApplicationController
    respond_to :json, :html
    before_action :set_marketing_coordinator, only: [:show, :edit, :update, :destroy]

    # GET /marketing_coordinators
    # GET /marketing_coordinators.json
    def index
      @marketing_coordinators = MarketingCoordinator.all
    end

    # GET /marketing_coordinators/1
    # GET /marketing_coordinators/1.json
    def show
    end

    # GET /marketing_coordinators/new
    def new
      @marketing_coordinator = MarketingCoordinator.new
      @url = admin_lte_marketing_coordinators_path
    end

    # GET /marketing_coordinators/1/edit
    def edit
      @url = admin_lte_marketing_coordinator_path(@marketing_coordinator)
    end

    # POST /marketing_coordinators
    # POST /marketing_coordinators.json
    def create
      # binding.pry
      @marketing_coordinator = MarketingCoordinator.new(marketing_coordinator_params)

      if @marketing_coordinator.save
        flash[:notice] = t('admin.marketing_coordinators.create.success')
        respond_with :edit, :admin_lte, @marketing_coordinator
      else
        flash[:warning] = @marketing_coordinator.errors.full_messages.uniq.join(', ')
        respond_with :new, :admin_lte, :marketing_coordinator
      end
    end

    # PATCH/PUT /marketing_coordinators/1
    # PATCH/PUT /marketing_coordinators/1.json
    def update
      if @marketing_coordinator.update(marketing_coordinator_params)
        flash[:notice] = t('admin.marketing_coordinators.update.success')
        respond_with :edit, :admin_lte, @marketing_coordinator
      else
        flash[:warning] = @marketing_coordinator.errors.full_messages.uniq.join(', ')
        respond_with :edit, :admin_lte, :marketing_coordinator
      end
    end

    # DELETE /marketing_coordinators/1
    # DELETE /marketing_coordinators/1.json
    def destroy
      @marketing_coordinator.destroy
      respond_to do |format|
        format.html { redirect_to admin_lte_marketing_coordinators_path, notice: t('admin.marketing_coordinators.destroy.success') }
        # format.json { head :no_content }
      end
    end

    # Use callbacks to share common setup or constraints between actions.
  private
    def set_marketing_coordinator
      @marketing_coordinator = MarketingCoordinator.find(params[:id])
    end

    def marketing_coordinator_params
      params.require(:marketing_coordinator).permit(:name, :age, :marketing_coordinator_id, :faculty_id, :user_id, :manager)
    end
  end
end