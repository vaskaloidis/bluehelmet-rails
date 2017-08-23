class SessionController < Clearance::SessionsController

	def new
	end

	def create
		@session = authenticate(params)
		sign_in(@session) do |status|
			if status.success?
				flash[:success] = "Thank you, you've authenticated succesfully"
				if current_user.role == 'admin'
					redirect_to admin_section_path
				else
					redirect_to customer_secton_path
				end
			else
				flash[:error] = "There was an error with your login"
				render 'new'
			end
		end
	end

	private
	def user_params
		params.require(:session).permit(:email,:password)
	end
end