class AidesController < ApplicationController

    def show 
        @aide = Aide.find(params[:id])
    end 

    def new 
        @aide = Aide.new
    end 

    def create
        @aide = Aide.create(aides_params)
        redirect_to aide_path(@aide)
    end 

    def aides_params
        params.require(:aide).permit(:first_name, :last_name, :email, :gender, :address, :certifications, :role)
    end 
end
