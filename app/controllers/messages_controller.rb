class MessagesController < InheritedResources::Base

  private

    def message_params
      params.require(:message).permit(:content, :user_id)
    end
end

