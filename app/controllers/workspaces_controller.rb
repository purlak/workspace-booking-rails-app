class WorkspacesController < ApplicationController
    def index 
        @workspaces = Workspace.all
    end 
    
    def new
         @workspace = Workspace.new
    end 
    
    def create
        @building = Building.find_by(params[:location_name])
        @workspace = @building.workspaces.build(workspace_params)
        @workspace.save
        #binding.pry
        if @workspace.save
            redirect_to @building.workspaces      
        else 
            render :new 
        end 
    end 
    
    def show
        
    end 
    
    private
    
    def workspace_params
        params.require(:workspace).permit(:workspace_type, :building_id)
    end 
end
