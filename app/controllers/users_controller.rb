class UsersController < ApplicationController
    before_action :logged_in
    skip_before_action :logged_in, only: [:new, :create]
    
    def index
        
    end 
    
    def new 
        @user=User.new
    end 
    
    def create
        @user = User.new(user_params)
        if user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            redirect_to '/signup'
        end 
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
