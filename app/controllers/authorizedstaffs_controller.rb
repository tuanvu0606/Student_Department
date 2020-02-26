class AuthorizedstaffsController < InheritedResources::Base

  private

    def authorizedstaff_params
      params.require(:authorizedstaff).permit(:name, :user_id)
    end
end

