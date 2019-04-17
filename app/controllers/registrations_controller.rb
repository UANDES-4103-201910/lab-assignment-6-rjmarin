class RegistrationsController < ApplicationController
	def new
	
	end

	def create
		@user = User.create(name: params[:registrations][:name],last_name:params[:registrations][:last_name],
												email:params[:registrations][:email],
												phone:params[:registrations][:phone],password:params[:registrations][:password])

			if @user.save
				respond_to do |format|
					format.html { redirect_to root_path, notice: 'User was successfully created.' }
					end
			else
				flash[:error] = "couldn't create the user"
				redirect_to sign_in
			end

	end
end
