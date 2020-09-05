class RequestJobsController < ApplicationController
    
    def index 
        @request_jobs = RequestJob.all 
    end 


    def show 
        @request_job = RequestJob.find(params[:id])
    end 

    def new 
        @request_job = RequestJob.new
        @aides = Aide.all 
        @request_services = RequestService.all
    end 

    def create
        @request_job = RequestJob.create(request_job_params)
        redirect_to request_job_path(@request_job)
    end 

    def request_job_params
        params.require(:request_job).permit(:request_service_id, :aide_id, :pay_rate, :starting_date, :location)
    end 
end



