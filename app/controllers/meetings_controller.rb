class MeetingsController < InheritedResources::Base

  private

    def meeting_params
      params.require(:meeting).permit(:time, :content, :user_id)
    end
end

