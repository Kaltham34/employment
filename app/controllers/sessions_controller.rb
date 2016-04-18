class SessionsController < ApplicationController
	skip_before_action :authorize
	def new
	end

	def create
		user=User.find_by(email: params[:sessions][:email].downcase)
		# if user && user.password == params[:demo][:password]
		if user && user.authenticate(params[:sessions][:password])
			log_in user
			redirect_to user
			#login user
		else
			flash.now[:danger] = "invalid email/password"
			render 'new'
		end
	end

	def destroy
		logout
		redirect_to root_path

	end
end


	  



end
