class ContractsController < ApplicationController
    skip_before_action :authorized_to_see_page_client, only: [:login, :handle_login, :new, :create]

    def index 
        @contracts = Contract.all 
    end 

    def show 
        @contract = Contract.find(params[:id])
    end 

    def new 
        @contract = Contract.new 
        @aides = Aide.all
        @services = Service.all
    end 

    def create
        @contract = Contract.create(contract_params)
        redirect_to contract_path(@contract)
    end 
    
    def contract_params
        params.require(:contract).permit(:aide_id, :service_id, :availability_to_start, :pay_rate)
    end 
end
