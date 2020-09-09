class RequestServicesController < ApplicationController
    # helper_method :check_and_see_if_someone_is_logged_in_as_client?
    helper_method :check_and_see_if_someone_is_logged_in_as_client?


    before_action :authorized_to_see_page_client
    skip_before_action :authorized_to_see_page_client, only: [:index]




    def index 
        @request_services = RequestService.all 
    end 

    def show 
        @request_service = RequestService.find(params[:id])
    end 

    def new 
        @request_service = RequestService.new
        @clients = Client.all 
        @services = Service.all
    end 

    def edit 
        @request_service = RequestService.find(params[:id])
        # @aides = Aide.all
        @services = Service.all
        # @clients = Client.all
    end 

    def update
        @request_service = RequestService.find(params[:id])
        @request_service.update(request_service_params)
        redirect_to request_service_path(@request_service)
    end 


    def create
        @current_client = Client.find_by(id: session[:client_id]) 
        # Attaching the client aspect to the @current_user
        @request_service = @current_client.request_services.create(request_service_params)
        redirect_to my_profile_path
    end 

    def destroy
        @request_service = RequestService.find(params[:id])
        @request_service.destroy
        redirect_to my_profile_path

      end

    def request_service_params
        params.require(:request_service).permit(:service_id, :client_id, :starting_date, :location, :hours, :comments)
    end 
end


