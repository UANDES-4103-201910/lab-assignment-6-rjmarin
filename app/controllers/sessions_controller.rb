class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.where(email: params[:session][:email]).first
		if user  && user.password == params[:session][:password]
			flash[:notice] = "login is sussesfully"
			redirect_to "/users/" + String(user.id)
		else
			flash[:error] = 'error email or password are incorrect'
			redirect_to root_path
		end






	end

	def destroy
		#complete this method
	end
end
