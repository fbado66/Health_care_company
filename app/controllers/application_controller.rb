class ApplicationController < ActionController::Base

    helper_method :check_and_see_if_someone_is_logged_in_as_aide?
    helper_method :check_and_see_if_someone_is_logged_in_as_client?
    helper_method :check_and_see_if_someone_is_logged_in_as_admin?

    # before_action :authorized_to_see_page_admin
    # before_action :authorized_to_see_page_client

    def set_current_aide
        @current_aide = Aide.find_by(id: session[:aide_id])   
    end 

    def set_current_client
        @current_client = Client.find_by(id: session[:client_id])   
    end 

    def set_current_admin
        @current_admin = Admin.find_by(id: session[:admin_id])   
    end


    def check_and_see_if_someone_is_logged_in_as_client?
        !set_current_client.nil? 
    end 

    def check_and_see_if_someone_is_logged_in_as_aide?
        !set_current_aide.nil? 
    end 

    def check_and_see_if_someone_is_logged_in_as_admin?
        !set_current_admin.nil? 
    end 


    def authorized_to_see_page_aide
        if !check_and_see_if_someone_is_logged_in_as_aide?
            redirect_to new_aide_path
        end
    end

    def authorized_to_see_page_client
        redirect_to new_client_path unless check_and_see_if_someone_is_logged_in_as_client?   
    end

    def authorized_to_see_page_admin
        redirect_to login_path unless check_and_see_if_someone_is_logged_in_as_admin?   
    end


end
