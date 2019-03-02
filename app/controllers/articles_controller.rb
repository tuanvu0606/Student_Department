class ArticlesController < InheritedResources::Base
  def index
	  # @static_pages = InventoryItem.page(params[:page]).per(20)
	  @articles = Article.all
  end
  private

    def article_params
      params.require(:article).permit(:name, :descrition, :content, :final_date, :comment, :final_comment_date)
    end
end

