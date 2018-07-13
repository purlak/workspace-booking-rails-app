class SessionsController < ApplicationController
    
    def new
        @user=User.new
    end 
    
    def create
        @user = User.find_by(email: params[:user][:email])
        
        if @user  && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            redirect_to '/login'
        end 
    end
    
    def show
        
    end 
    
    private
    
    def user_params
         params.require(:user).permit(:name, :age, :email, :admin, :password)
    end
end
