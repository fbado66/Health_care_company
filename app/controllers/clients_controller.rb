class ClientsController < ApplicationController
    def show 
        @client = Client.find(params[:id])
    end 

    def new 
        @client = Client.new
    end 

    def create
        @client = Client.create(client_params)
        redirect_to client_path(@client)
    end 

    def client_params
        params.require(:client).permit(:first_name, :last_name, :email, :gender, :address, :medicaid_number, :role)
    end 
end
