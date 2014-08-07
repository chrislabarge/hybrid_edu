class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  end
  
  def new
  	@user = User.new
  end

	def create
		@user = User.new(user_params)  #<--This attribute method is defined blow
		if @user.save									# in the private section of the controller
			sign_in @user
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
		else
			render 'new'
		end
	end
	
	private
	
		def user_params  #this is a method in order to prevent users from compromising the app by inputing a admin hash with their new user form
			params.require(:user).permit(:name, :email, :password,
															:password_confirmation)  # it passes this TEST 	$ bundle exec rspec spec/requests/user_pages_spec.rb \
																												#		> -e "signup with invalid information"
			
		end
	
end
	