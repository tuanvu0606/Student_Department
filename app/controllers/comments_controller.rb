class CommentsController < InheritedResources::Base

  private

    def comment_params
      params.require(:comment).permit(:content, :user_id_id)
    end
end

