class UsersController < ApplicationController

	include SessionHelper


	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			login(@user)
			redirect_to user_path(@user)
		else
			flash[:error] = "An error occured"
			render "new"
		end

	end


	def show
		if params[:id].to_i == current_user.id
			@user = User.find(params[:id])
		else
			redirect_to user_path(@user)
		end
	end

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end




end
