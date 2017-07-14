class UserInfosController < InheritedResources::Base

  private

    def user_info_params
      params.require(:user_info).permit(:name, :value, :User_id)
    end
end

