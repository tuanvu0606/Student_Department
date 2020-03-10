module AdminLte
  class BlogsController < AdminLte::ApplicationController
    respond_to :json, :html    
    before_action :set_blog, only: [:show, :edit, :update, :destroy]
    
    # GET /blogs
    # GET /blogs.json
    def index
      # @static_pages = InventoryItem.page(params[:page]).per(20)
      @blogs = Blog.all
    end

    # GET /blogs/1
    # GET /blogs/1.json
    def show
      @blogs_in_order = Blog.all.order("created_at desc").limit(5)
    end

    # GET /blogs/new
    def new
      @blog = Blog.new
      @url = admin_lte_blogs_path
    end

    # GET /blogs/1/edit
    def edit
      @url = admin_lte_blog_path(@blog)
    end

    # POST /blogs
    # POST /blogs.json
    def create
      @blog = Blog.new(blog_params)

      respond_to do |format|
        if @blog.save
          format.html { redirect_to admin_lte_blogs_path, notice: 'blog was successfully created.' }
          # format.json { render :show, status: :created, location: @blog }
        else
          format.html { render :new }
          # format.json { render json: @blog.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /blogs/1
    # PATCH/PUT /blogs/1.json
    def update
      respond_to do |format|
        if @blog.update(blog_params)
          format.html { redirect_to admin_lte_blog_path(@blog), notice: 'blog was successfully updated.' }
          # format.json { render :show, status: :ok, location: @blog }
        else
          format.html { render :edit }
          # format.json { render json: @blog.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /blogs/1
    # DELETE /blogs/1.json
    def destroy
      @blog.destroy
      respond_to do |format|
        format.html { redirect_to admin_lte_blogs_url, notice: 'blog was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_blog
        # binding.pry
        @blog = Blog.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def blog_params
        params.require(:blog).permit(:name, :descrition, :content, :final_date, :comment, :final_comment_date, :student_id, :image, :file, :checked_rule)
      end
  end
end