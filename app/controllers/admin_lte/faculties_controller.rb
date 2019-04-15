module AdminLte
  class FacultiesController < AdminLte::ApplicationController
    respond_to :json, :html
    before_action :set_faculty, only: [:show, :edit, :update, :destroy]

    # GET /faculties
    # GET /faculties.json
    def index
      @faculties = Faculty.all
    end

    # GET /faculties/1
    # GET /faculties/1.json
    def show
    end

    # GET /faculties/new
    def new
      @faculty = Faculty.new
      @url = admin_lte_faculties_path
    end

    # GET /faculties/1/edit
    def edit
      @url = admin_lte_faculty_path(@faculty)
    end

    # POST /faculties
    # POST /faculties.json
    def create
      # binding.pry
      @faculty = Faculty.new(faculty_params)

      if @faculty.save
        flash[:notice] = t('admin.faculties.create.success')
        respond_with :edit, :admin_lte, @faculty
      else
        flash[:warning] = @faculty.errors.full_messages.uniq.join(', ')
        respond_with :new, :admin_lte, :faculty
      end
    end

    # PATCH/PUT /faculties/1
    # PATCH/PUT /faculties/1.json
    def update
      if @faculty.update(faculty_params)
        flash[:notice] = t('admin.faculties.update.success')
        respond_with :edit, :admin_lte, @faculty
      else
        flash[:warning] = @faculty.errors.full_messages.uniq.join(', ')
        respond_with :edit, :admin_lte, :faculty
      end
    end

    # DELETE /faculties/1
    # DELETE /faculties/1.json
    def destroy
      @faculty.destroy
      respond_to do |format|
        format.html { redirect_to admin_faculties_path, notice: t('admin.faculties.destroy.success') }
        # format.json { head :no_content }
      end
    end

    private
      def set_faculty
        @faculty = Faculty.find(params[:id])
      end

      def faculty_params
        params.require(:faculty).permit(:name, :closure_date, :final_closure_date)
      end
  end
end
