class RequestJobsController < ApplicationController
    helper_method :check_and_see_if_someone_is_logged_in_as_admin?
    before_action :authorized_to_see_page_admin
    skip_before_action :authorized_to_see_page_admin, only: [:index]

    def index 
        @request_jobs = RequestJob.all 
    end 

    def show 
        @current_client = Client.find_by(first_name: params[:first_name])
        @request_job = RequestJob.find(params[:id])
    end 

    def new 
        @contract = Contract.all
        @client = Client.all 
        @clients = Client.all.map(&:first_name)
        @request_job = RequestJob.new
        @aides = Aide.all 
        @services = Service.all
        @request_services = RequestService.not_on_a_request_job
    end 

    def create
        @request_job = RequestJob.create(request_job_params)
        redirect_to admin_profile_path
    end 

    def edit 
        @request_job = RequestJob.find(params[:id])
        @request_services = RequestService.all
        @aides = Aide.all
        # @services = Service.all
        # @clients = Client.all
    end 

    def update
        @request_job = RequestJob.find(params[:id])
        @request_job.update(request_job_params)
        redirect_to request_job_path(@request_job)
    end 

    def destroy
        @request_job = RequestJob.find(params[:id])
        @request_job.destroy
        if @current_client 
            redirect_to my_profile_path 
        else
        redirect_to admin_profile_path
        end 
    end

    def request_job_params
        params.require(:request_job).permit(:request_service_id, :aide_id, :pay_rate, :hours, :comments, :starting_date, :location)
    end 

end



