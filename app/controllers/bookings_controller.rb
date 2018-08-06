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
        #binding.pry
        @workspace = Workspace.find_by(id: params[:workspace_id])
        @booking = Booking.create(id: params[:id])
        
        binding.pry
         
        if @booking.save
               redirect_to @booking     
        else 
            render :new 
        end 
    end 
    
    def show
        
    end 
    
    private
    
end
