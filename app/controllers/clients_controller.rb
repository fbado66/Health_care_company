class ClientsController < ApplicationController
    before_action :get_client, only: [:show, :edit, :update, :destroy]
    before_action :authorized_to_see_page_client
    skip_before_action :authorized_to_see_page_client, only: [:login, :handle_login, :new, :create]

    

    def login
        @error = flash[:error]
    end
    
    def handle_login
        @client = Client.find_by(first_name: params[:first_name])
        if @client && @client.authenticate(params[:password])
        # If the aide is found AND their password matches
        session[:client_id] = @client.id
        redirect_to client_path(@client)
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
        @client = flash[:errors]
        @client = Client.new
    end 

   
    def create
        @client = Client.create(client_params)
          if @client.valid?
            session[:client_id] = @client.id
            redirect_to client_path(@client)
          else 
            flash[:errors] = @client.errors.full_messages
            redirect_to new_client_path
          end
        end

    private 

    def get_client
        @client = Client.find(params[:id])
      end

    def client_params
        params.require(:client).permit(:first_name, :last_name, :email, :gender, :address, :role, :password)
    end 
end
