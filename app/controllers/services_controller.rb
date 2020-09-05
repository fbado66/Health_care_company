class ServicesController < ApplicationController

    def index 
        @services = Service.all 
    end 

    def show 
        @service = Service.find(params[:id])
    end 
    
     def new 
        @service = Service.new
     end 

     def create
        @service = Service.create(service_params)
        redirect_to service_path(@service)
     end 

     def service_params
        params.require(:service).permit(:title, :content, :skills)
     end 
end
