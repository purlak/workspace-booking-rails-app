class BookingsController < ApplicationController
    
    def index 
        @bookings = Booking.all
    end 
    
    def new
        @workspace = Workspace.find_by(id: params[:workspace_id])
        @booking = Booking.new
        #binding.pry
    end 
    
    def create
        #@building = Building.find_by(id: params[:workspace][:building_id])
        #@user = User.find_by(id: params[:id])
        @workspace = Workspace.find_by(id: params[:workspace_id])
        @booking = Booking.create(booking_params)
        @booking.user_id = current_user.id
        #binding.pry
        if @booking.save
               redirect_to workspace_booking_path
        else 
            render :new 
        end 
    end 
    
    def show
        
    end 
    
    private
    
    def booking_params
        params.require(:booking).permit(:booking_date, :booking_time, :booking_duration, :workspace_id, :user_id)
    end 
    
end
