class UsersController < ApplicationController
    # before_action :get_user, only: [:show, :edit, :update, :destroy]
    # skip_before_action :authorized_to_see_page_aide, only: [:login, :handle_login, :new, :create]

    
    # def login
    #     @error = flash[:error]
    #   end
    
    #   def handle_login
    #     @user = User.find_by(first_name: params[:first_name])
    #     if @user && @user.authenticate(params[:password])
    #       # If the student is found AND their password matches
    #       session[:user_id] = @user.id
    #       redirect_to user_path(@user)
    #     else
    #       flash[:error] = "Incorrect username or password"
    #       redirect_to login_path
    #     end
    #   end
    
    #   def logout
    #     session[:user_id] = nil
    #     redirect_to login_path
    #   end
    
    
    
    
    
    def index 
        @users = User.all 
    end 

    # def show 
    #     @user = User.find(params[:id])
    # end 

  
    # def new 
    #     @user = flash[:errors]
    #     @user = User.new 
        

    # end 

    # def create
    #     @user = User.create(user_params)
    #       if @user.valid?
    #         session[:user_id] = @user.id
    #         redirect_to users_path
    #       else 
    #         flash[:errors] = @user.errors.full_messages
    #         redirect_to new_user_path
    #       end
    #     end

    # private 

    # def get_user
    #     @user = User.find(params[:id])
    #   end

    # def user_params
    #     params.require(:user).permit(:first_name, :last_name, :email, :password, :role)
    # end 

end
