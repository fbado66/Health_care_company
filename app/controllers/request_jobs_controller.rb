class RequestJobsController < ApplicationController
    helper_method :check_and_see_if_someone_is_logged_in_as_admin?
    before_action :authorized_to_see_page_admin
    skip_before_action :authorized_to_see_page_admin, only: [:index]



    def index 
        @request_jobs = RequestJob.all 
    end 


    def show 
        @request_job = RequestJob.find(params[:id])
    end 

    def new 
        @clients = Client.all
        @request_job = RequestJob.new
        @aides = Aide.all 
        @services = Service.all
        @request_services = RequestService.all
    end 

    def create
        @request_job = RequestJob.create(request_job_params)
        redirect_to admin_profile_path
    end 

    def request_job_params
        params.require(:request_job).permit(:request_service_id, :aide_id, :pay_rate, :hours, :comments, :starting_date, :location)
    end 
end



