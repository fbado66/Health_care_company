class ServicesController < ApplicationController
   helper_method :check_and_see_if_someone_is_logged_in_as_aide?

   helper_method :check_and_see_if_someone_is_logged_in_as_client?
   # before_action :authorized_to_see_page_client
   # skip_before_action :authorized_to_see_page_client, only: [:index]


   before_action :authorized_to_see_page_aide
   skip_before_action :authorized_to_see_page_aide, only: [:index, :job]
   
   # CHECK IF I NEED IT FOR CLIENT ACCESS 
   # before_action :authorized_to_see_page_client
   # skip_before_action :authorized_to_see_page_client, only: [:index]
   
    def index 
      @current_admin = Admin.find_by(id: session[:admin_id]) 
      @current_aide = Aide.find_by(id: session[:aide_id]) 
      @current_client = Client.find_by(id: session[:client_id]) 
      @services = Service.all 
    end 

    def job
      @current_aide = Aide.find_by(id: session[:aide_id]) 
      @current_client = Client.find_by(id: session[:client_id]) 
      @services = Service.all 
    end 

    def show 
      @current_aide = Aide.find_by(id: session[:aide_id]) 
      @current_client = Client.find_by(id: session[:client_id]) 
      if @current_client || @current_aide
        @service = Service.find(params[:id])
      elsif 
         redirect_to new_client_path
      end 
    end 

    def career 
      @current_aide = Aide.find_by(id: session[:aide_id]) 
      @current_client = Client.find_by(id: session[:client_id]) 
      if @current_client
        @service = Service.find(params[:id])
      elsif @current_aide 
         @service = Service.find(params[:id])
      else
         redirect_to new_aide_path
      end 
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
