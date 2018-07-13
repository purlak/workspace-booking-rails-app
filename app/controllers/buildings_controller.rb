class BuildingsController < ApplicationController
    
    def index 
        @buildings = Building.all
    end 
    
    def new
        @building = Building.new
    end 
    
    def create
        @building =  Building.find_by(params[:id])
        if @building.save
            redirect_to @building
            
        else 
            render :new 
        end 
    end 
    
    private
    
    def building_params
        params.require(:building).permit(:location_name, :address)
    end 
    
end
