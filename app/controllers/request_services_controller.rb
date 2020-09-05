class RequestServicesController < ApplicationController
    def index 
        @request_services = RequestService.all 
    end 

    def show 
        @request_services = RequestService.find(params[:id])
    end 

    def new 
        @request_service = RequestService.new
        @clients = Client.all 
        @services = Service.all
    end 

    def create
        @request_service = RequestService.create(request_service_params)
        redirect_to request_services_path
    end 

    def request_service_params
        params.require(:request_service).permit(:service_id, :client_id, :charge_rate, :starting_date, :skills)
    end 
end
