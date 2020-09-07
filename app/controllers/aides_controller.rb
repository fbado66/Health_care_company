class AidesController < ApplicationController
    helper_method :check_and_see_if_someone_is_logged_in_as_aide?


    def show 
        @aide = Aide.find(params[:id])
    end 

    def login
        @error = flash[:error]
    end 

    

   


    def new 
        @aide = Aide.new
    end 

    def create
        @aide = Aide.create(aides_params)
        @current_user.aide = @aide
        redirect_to aide_path(@aide) 
    end 

    private 

   
    def aides_params
        params.require(:aide).permit(:first_name, :last_name, :email, :gender, :address, :role)
    end 
end
