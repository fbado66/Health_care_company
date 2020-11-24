class UsersController < ApplicationController

    def index 
        @users = User.all 
    end 

    def homepage 
    end 

    def about 
    end 

end
