class StudentsController < InheritedResources::Base
  def index
	  # @static_pages = InventoryItem.page(params[:page]).per(20)
	  @students = Student.all
  end

  private

    def student_params
      params.require(:student).permit(:name, :age, :user_id)
    end
end

