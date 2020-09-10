class ClientsController < ApplicationController
    before_action :get_client, only: [:show, :edit, :update, :destroy]
    before_action :authorized_to_see_page_client

    skip_before_action :authorized_to_see_page_client, only: [:login, :handle_login, :new, :create]

    def login
        @error = flash[:error]
    end

    def my_profile

    end 
    
    def handle_login
        @client = Client.find_by(first_name: params[:first_name])
        if @client && @client.authenticate(params[:password])
        # If the client is found AND their password matches
        session[:client_id] = @client.id
        redirect_to my_profile_path
        else
        flash[:error] = "Incorrect username or password"
        redirect_to login_2_path
        end
    end
    
    def logout
        session[:client_id] = nil
        redirect_to login_2_path
    end

    def index 
        @clients = Client.all 
    end 


    def show 
        @client = Client.find(params[:id])
    end 

    def new
        # @current_admin = Admin.find_by(id: session[:admin_id]) 
        @client = flash[:errors]
        @client = Client.new
    end 

   
    def create
        @client = Client.create(client_params)
          if @client.valid?
            session[:client_id] = @client.id
            redirect_to my_profile_path
          else 
            flash[:errors] = @client.errors.full_messages
            redirect_to new_client_path
          end
        end

        def edit 
            @client = Client.find(params[:id])
        end 

        def update
            @client = Client.find(params[:id])
            @client.update(client_params)
            redirect_to my_profile_path
        end 

        def destroy
            @client = Client.find(params[:id])
            @client.destroy
            redirect_to services_path
        end

    private 

    def get_client
        @client = Client.find(params[:id])
      end

    def client_params
        params.require(:client).permit(:first_name, :last_name, :email, :age, :gender, :town_you_live_in, :preference_on_aides, :password, :phone)
    end 
end

