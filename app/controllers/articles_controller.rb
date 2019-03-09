class ArticlesController < InheritedResources::Base
  before_action :set_article, only: [:show, :edit, :update, :destroy]
    # GET /inventory_item_categories/new
  def new
    @article = Article.new    
  end

  def index
	  # @static_pages = InventoryItem.page(params[:page]).per(20)
	  @articles = Article.all
  end

  # POST /inventory_item_categories
  # POST /inventory_item_categories.json
  def create
  	binding.pry
    @article = Article.new(article_params)
    @article.student_id = current_user.student.id
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article category was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:name, :descrition, :content, :final_date, :comment, :final_comment_date, :student_id)
    end
end

