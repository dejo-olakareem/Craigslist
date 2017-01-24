class SessionController < ApplicationController
include SessionHelper

	def new
	end

	def create
		@user = User.find_by_email(params[:email])

		if @user && @user.password == params[:password]
			login(@user)
			redirect_to user_path(@user)
		else
			redirect_to login_path
		end
	end

	def destroy
		logout
		redirect_to root_path
	end
end