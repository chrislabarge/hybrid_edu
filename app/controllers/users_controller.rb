class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy] #this makes it so every action in the controller is restricted to edit or update requests..and now index of the users
  before_action :correct_user, 	 only: [:edit, :update]
  before_action :admin_user, 		 only: :destroy
  
  def index
  	@users = User.paginate(page: params[:page	])
  end
  
  def show
  	@user = User.find(params[:id])
  end
  
  def new
  	@user = User.new
  end
	
	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User deleted."
		redirect_to users_url
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
	
	def edit
		
	end
	
	def update
		
		if @user.update_attributes(user_params)
			flash[:success] = "Profile updated"
			redirect_to @user
		else
			render 'edit'
		end
	end
	
	private
	
		def user_params  #this is a method in order to prevent users from compromising the app by inputing a admin hash with their new user form
			params.require(:user).permit(:name, :email, :password,
															:password_confirmation)  # it passes this TEST 	$ bundle exec rspec spec/requests/user_pages_spec.rb \
																												#		> -e "signup with invalid information
		end
		
		#Before filters	
			
		def signed_in_user
			
			unless signed_in? #ALL OF THIS STUFF COMES FROM THE sessions_helper.rb
				store_location
				flash[:warning] = "Please sign in."
				redirect_to signin_url
			end
		
		end
		
		def correct_user
			@user = User.find(params[:id] )
			redirect_to(root_url) unless current_user?(@user)
		end
		
		def admin_user
			redirect_to(root_url) unless current_user.admin?
		end
		
end
	