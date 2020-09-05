class AidesController < ApplicationController
    before_action :get_aide, only: [:show]
    # skip_before_action :authorized_to_see_page, only: [:login, :handle_login, :new, :create]

    





    def show 
        @aide = Aide.find(params[:id])
    end 

    def login
        @error = flash[:error]
    end 

    def handle_login
        @aide = Aide.find_by(first_name: params[:first_name])
        if @aide && @aide.authenticate(params[:password])
            #if the aide is found and their password matches
            session[:aide_id] = @aide.id
            redirect_to aide_path(@aide)
        else 
            flash[:error] = "Incorrect username or password"
            # redirect_to login_path
        end 
    end 

    def logout 
        session[:aide_id] = nil 
        redirect_to login_path 
    end 


    def new 
        @errors = flash[:errors]
        @aide = Aide.new
    end 

    def create
        @aide = Aide.create(aides_params)
        if @aide.valid?
            session[:aide_id] = @aide.id
            redirect_to aide_path(@aide)
        else 
            flash[:errors] = @aide.errors.full_messages
        redirect_to new_aide_path, alert: 'Something went wrong!, missing information for some fields'
        end 
    end 

    private 

    def get_aide
        @aide = Aide.find(params[:id])
      end
    def aides_params
        params.require(:aide).permit(:first_name, :last_name, :email, :gender, :address, :certifications, :role, :password)
    end 
end
