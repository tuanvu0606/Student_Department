class DocumentsController < InheritedResources::Base

  private

    def document_params
      params.require(:document).permit(:header, :content, :user_id_id)
    end
end

