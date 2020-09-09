class AidesController < ApplicationController

    before_action :get_aide, only: [:show, :edit, :update, :destroy]
    before_action :authorized_to_see_page_aide
    skip_before_action :authorized_to_see_page_aide, only: [:login, :handle_login, :new, :create]

    def login
        @error = flash[:error]
    end

    def profile
        render :profile
    end
    
    def handle_login
        @aide = Aide.find_by(first_name: params[:first_name])
        if @aide && @aide.authenticate(params[:password])
        # If the aide is found AND their password matches
        session[:aide_id] = @aide.id
        redirect_to aide_path(@aide)
        else
        flash[:error] = "Incorrect username or password"
        redirect_to login_path
        end
    end
    
    def logout
        session[:aide_id] = nil
        redirect_to login_path
    end
    
    def index 
        @aides = Aide.all 
    end 

    def show 
        @aide = Aide.find(params[:id])
    end 

    def new 
        @aide = flash[:errors]
        @aide = Aide.new 
    end 

    def create
        @aide = Aide.create(aide_params)
            if @aide.valid?
                session[:aide_id] = @aide.id
                redirect_to aide_path(@aide)
            else 
                flash[:errors] = @aide.errors.full_messages
                redirect_to new_aide_path
            end
    end

    private 

    def get_aide
        @aide = Aide.find(params[:id])
    end

    def aide_params
        params.require(:aide).permit(:first_name, :last_name, :email, :age, :gender, :town_you_live_in, :town_you_can_work, :certifications, :password)
    end 

end
