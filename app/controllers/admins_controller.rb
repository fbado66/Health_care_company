class AdminsController < ApplicationController
    before_action :get_admin, only: [:show, :edit, :update, :destroy, :admin_profile]
    before_action :authorized_to_see_page_admin
    skip_before_action :authorized_to_see_page_admin, only: [:login, :handle_login, :new, :create]


    def login
      @error = flash[:error]
    end

    def profile
      @contracts = Contract.all
      @request_jobs = RequestJob.all
      @request_services = RequestService.all 
      @clients = Client.all
      @aides = Aide.all
      render :admin_profile
    end
    
    def handle_login
      @admin = Admin.find_by(first_name: params[:first_name])
        if @admin && @admin.authenticate(params[:password])
        session[:admin_id] = @admin.id
        redirect_to admin_profile_path
        else
        flash[:error] = "Incorrect username or password"
        redirect_to login_path
        end
    end
    
    def logout
      session[:admin_id] = nil
      redirect_to login_path
    end

    def show 
      @admin = Admin.find(params[:id])
    end 

    def new 
      @admin = flash[:errors]
      @admin = Admin.new 
    end 

    def create
      @admin = Admin.create(admin_params)
        if @admin.valid?
          session[:admin_id] = @admin.id
          redirect_to admin_path(@admin)
        else 
          flash[:errors] = @admin.errors.full_messages
          redirect_to new_admin_path
        end
    end

    private 

    def get_admin
      @admin = Admin.find(params[:id])
    end

    
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password)
    end 

end


