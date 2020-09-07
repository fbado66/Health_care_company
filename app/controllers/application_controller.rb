class ApplicationController < ActionController::Base

    helper_method :check_and_see_if_someone_is_logged_in_as_aide?
    helper_method :check_and_see_if_someone_is_logged_in_as_client?
    before_action :authorized_to_see_page_client
    # before_action :authorized_to_see_page_aide


    def set_current_user
        # INSTANCE VARIABLES IN A BEFORE ACTION IS AVAILABLE
        @current_user = User.find_by(id: session[:user_id]) 
    end

    def current_user_client_role
      @current_user.role == "client" 
       
    end 

    def current_user_aide_role
       @current_user.role == 'aide'
    end 

    # def set_current_aide
    #     # INSTANCE VARIABLES IN A BEFORE ACTION IS AVAILABLE
    #     @current_aide = Aide.find_by(id: session[:aide_id])
    # end

    def check_and_see_if_someone_is_logged_in_as_client?
        !set_current_user.nil? && current_user_client_role  
    end 

    def check_and_see_if_someone_is_logged_in_as_aide?
        !set_current_user.nil? && current_user_aide_role
    end 


    def authorized_to_see_page_client
        redirect_to login_path unless check_and_see_if_someone_is_logged_in_as_client? || check_and_see_if_someone_is_logged_in_as_aide?
    end

    # def authorized_to_see_page_aide
    #     redirect_to login_path unless check_and_see_if_someone_is_logged_in_as_aide?
    # end
end
