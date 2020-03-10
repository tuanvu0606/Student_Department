class BlogsController < InheritedResources::Base
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
    # GET /inventory_item_categories/new
  def new
    @blog = Blog.new    
  end

  def index
	  # @static_pages = InventoryItem.page(params[:page]).per(20)
	  @blogs = current_user.student.blog.all
  end

  # POST /inventory_item_categories
  # POST /inventory_item_categories.json
  def create
  	# binding.pry
    @blog = Blog.new(blog_params)
    @blog.student_id = current_user.student.id
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'blog category was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      # binding.pry
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:name, :descrition, :content, :final_date, :comment, :final_comment_date, :student_id, :image, :file, :checked_rule)
    end
end

