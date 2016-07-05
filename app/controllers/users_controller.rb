class UsersController < ApplicationController


	def new
		@user = User.new		
	end


	def create
		 @user = User.new(user_params)
		 if @user.save
		 	flash[:success]="El usuario ha sido creado con éxito"
		 	redirect_to root_path
	 	 else
	 	 	render :new
 	 	 end

		
	end


	private

	def user_params
		params.require(:user).permit(:email, :password, :name, :twitter_handle)		
	end

end
