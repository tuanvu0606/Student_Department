module AdminLte
  class StudentsController < AdminLte::ApplicationController
    respond_to :json, :html
    before_action :set_student, only: [:show, :edit, :update, :destroy]

    # GET /students
    # GET /students.json
    def index
      @students = Student.all
    end

    # GET /students/1
    # GET /students/1.json
    def show
      
    end

    # GET /students/new
    def new
      @student = Student.new
      @url = admin_lte_students_path
    end

    # GET /students/1/edit
    def edit
      @url = admin_lte_student_path(@student)
      @blogs = @student.blog.page(params[:page]).per(20)
    end

    # POST /students
    # POST /students.json
    def create
      # binding.pry
      @student = Student.new(student_params)

      if @student.save
        flash[:notice] = t('admin.students.create.success')
        respond_with :edit, :admin_lte, @student
      else
        flash[:warning] = @student.errors.full_messages.uniq.join(', ')
        respond_with :new, :admin_lte, :student
      end
    end

    # PATCH/PUT /students/1
    # PATCH/PUT /students/1.json
    def update
      if @student.update(student_params)
        flash[:notice] = t('admin.students.update.success')
        respond_with :edit, :admin_lte, @student
      else
        flash[:warning] = @student.errors.full_messages.uniq.join(', ')
        respond_with :edit, :admin_lte, :student
      end
    end

    # DELETE /students/1
    # DELETE /students/1.json
    def destroy
      @student.destroy
      respond_to do |format|
        format.html { redirect_to admin_lte_students_path, notice: t('admin.students.destroy.success') }
        # format.json { head :no_content }
      end
    end

    # Use callbacks to share common setup or constraints between actions.
  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :age, :address, :faculty_id, :user_id, :tutor_id)
    end
  end
end