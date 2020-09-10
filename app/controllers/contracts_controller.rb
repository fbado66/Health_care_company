class ContractsController < ApplicationController
    helper_method :check_and_see_if_someone_is_logged_in_as_aide?
    before_action :authorized_to_see_page_aide
    skip_before_action :authorized_to_see_page_aide, only: [:index]
    # skip_before_action :authorized_to_see_page_client, only: [:login, :handle_login, :new, :create]

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
        @clients = Client.all
    end 

    def edit 
        @contract = Contract.find(params[:id])
        @aides = Aide.all
        @services = Service.all
        @clients = Client.all
    end 

    def update
        @contract = Contract.find(params[:id])
        @contract.update(contract_params)
        redirect_to contract_path(@contract)
    end 

    def create
        @current_aide = Aide.find_by(id: session[:aide_id]) 
        @contract = @current_aide.contracts.create(contract_params)
        redirect_to profile_path(@current_aide)
    end 

    def destroy
        @contract = Contract.find(params[:id])
        @contract.destroy
        redirect_to profile_path
    end


    private
    
    def contract_params
        params.require(:contract).permit(:aide_id, :service_id, :availability_to_start, :pay_rate, :title)
    end 
end



