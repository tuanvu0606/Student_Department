module AdminLte
  class TutorsController < AdminLte::ApplicationController
    respond_to :json, :html
    before_action :set_tutor, only: [:show, :edit, :update, :destroy]

    # GET /tutors
    # GET /tutors.json
    def index
      @tutors = Tutor.all
    end

    # GET /tutors/1
    # GET /tutors/1.json
    def show
      
    end

    # GET /tutors/new
    def new
      @tutor = Tutor.new
      @url = admin_lte_tutors_path
    end

    # GET /tutors/1/edit
    def edit
      @url = admin_lte_tutor_path(@tutor)
      # @blogs = @tutor.blog.page(params[:page]).per(20)
    end

    # POST /tutors
    # POST /tutors.json
    def create
      # binding.pry
      @tutor = Tutor.new(tutor_params)

      if @tutor.save
        flash[:notice] = t('admin.tutors.create.success')
        respond_with :edit, :admin_lte, @tutor
      else
        flash[:warning] = @tutor.errors.full_messages.uniq.join(', ')
        respond_with :new, :admin_lte, :tutor
      end
    end

    # PATCH/PUT /tutors/1
    # PATCH/PUT /tutors/1.json
    def update
      # @tutor.update student_ids: tutor_params.student_ids
      if @tutor.update(tutor_params)
        flash[:notice] = t('admin.tutors.update.success')
        respond_with :edit, :admin_lte, @tutor
      else
        flash[:warning] = @tutor.errors.full_messages.uniq.join(', ')
        respond_with :edit, :admin_lte, :tutor
      end
    end

    # DELETE /tutors/1
    # DELETE /tutors/1.json
    def destroy
      @tutor.destroy
      respond_to do |format|
        format.html { redirect_to admin_lte_tutors_path, notice: t('admin.tutors.destroy.success') }
        # format.json { head :no_content }
      end
    end

    # Use callbacks to share common setup or constraints between actions.
  private
    def set_tutor
      @tutor = Tutor.find(params[:id])
    end

    def tutor_params
      params.require(:tutor).permit(:name, :age, :address, :faculty_id, :user_id, :student_ids)
    end
  end
end