class RequestServicesController < ApplicationController
    # helper_method :check_and_see_if_someone_is_logged_in_as_client?
    helper_method :check_and_see_if_someone_is_logged_in_as_aide?

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
        @service = Service.all
    end 


    def create
        @current_user = User.find_by(id: session[:user_id]) 
        # Attaching the client aspect to the @current_user
        @request_service = @current_user.client.request_services.create(request_service_params)
        redirect_to client_path(@current_user.client)
    end 

    def destroy
        @request_service = RequestService.find(params[:id])
        @request_service.destroy
        redirect_to client_path(@current_user.client)
      end

    def request_service_params
        params.require(:request_service).permit(:service_id, :client_id, :charge_rate, :starting_date, :skills)
    end 
end
