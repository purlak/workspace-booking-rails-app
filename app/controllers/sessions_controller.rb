class SessionsController < ApplicationController
    
    def new
        
    end 
    
    def create
    
    end
    
    def show
        
    end 
    
    private
    
    def user_params
         params.require(:user).permit(:name, :age, :email, :admin, :password)
    end
end
