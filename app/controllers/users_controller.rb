class UsersController < ApplicationController
    before_action :logged_in
    skip_before_action :logged_in, only: [:new, :create]
    
    def index
        
    end 
    
    def new 
        @user=User.new
    end 
    
    def create
    
    end 
    
    def show
        
    end 
    
    private
    
    def user_params
         params.require(:user).permit(:name, :age, :email, :admin, :password)
    end
    
    def logged_in
        if !session[:user_id]
            redirect_to '/'
        end     
    end 
    
end
