module AdminLte
  class AuthorizedstaffsController < AdminLte::ApplicationController
    respond_to :json, :html
    before_action :set_authoriziedstaff, only: [:show, :edit, :update, :destroy]

    # GET /faculties
    # GET /faculties.json
    def index
      @authoriziedstaffs = Authorizedstaff.all
    end

    # GET /faculties/1
    # GET /faculties/1.json`
    def show
    end

    # GET /faculties/new
    def new
      @authoriziedstaffs = Authoriziedstaff.new
      @url = new_admin_lte_authoriziedstaff_path
    end

    # GET /faculties/1/edit
    def edit
      @url = admin_lte_authorized_staff_path(@authoriziedstaff)
    end

    # POST /faculties
    # POST /faculties.json
    def create
      # binding.pry
      @authoriziedstaff = Authoriziedstaff.new(authoriziedstaff_params)

      if @authoriziedstaff.save
        flash[:notice] = t('admin.authoriziedstaffs.create.success')
        respond_with :edit, :admin_lte, @authoriziedstaff
      else
        flash[:warning] = @authoriziedstaff.errors.full_messages.uniq.join(', ')
        respond_with :new, :admin_lte, :authoriziedstaff
      end
    end

    # PATCH/PUT /faculties/1
    # PATCH/PUT /faculties/1.json
    def update
      if @authoriziedstaff.update(authoriziedstaff_params)
        flash[:notice] = t('admin.faculties.update.success')
        respond_with :edit, :admin_lte, @authoriziedstaff
      else
        flash[:warning] = @authoriziedstaff.errors.full_messages.uniq.join(', ')
        respond_with :edit, :admin_lte, :authoriziedstaff
      end
    end

    # DELETE /faculties/1
    # DELETE /faculties/1.json
    def destroy
      @authoriziedstaff.destroy
      respond_to do |format|
        format.html { redirect_to admin_lte_authorizedstaff_path, notice: t('admin.faculties.destroy.success') }
        # format.json { head :no_content }
      end
    end

    private
      def set_authoriziedstaff
        @authoriziedstaff = Authoriziedstaff.find(params[:id])
      end

      def authorizedstaff_params
        params.require(:authorizedstaff).permit(:name, :user_id)
      end
  end
end
