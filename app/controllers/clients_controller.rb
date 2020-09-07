class ClientsController < ApplicationController
    helper_method :check_and_see_if_someone_is_logged_in_as_client?
    before_action :authorized_to_see_page_client

    def index 
        @clients = Client.all 
    end 


    def show 
        @client = Client.find(params[:id])
    end 

    def new    
        @client = Client.new
     
    end 


    def create
       
        @client = Client.create(client_params)
        @current_user.client = @client
        
            redirect_to clients_path
        
    end 

    private 

   

    def client_params
        params.require(:client).permit(:first_name, :last_name, :email, :gender, :address, :role)
    end 
end
