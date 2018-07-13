class WorkspacesController < ApplicationController
    def index 
        @workspaces = Workspace.all
    end 
    
    def new
        @workspace = Workspace.new
    end 
    
    def create
        @workspace =  Workspace.find_by(params[:id])
        if @workspace.save
            redirect_to @workspace
            
        else 
            render :new 
        end 
    end 
    
    private
    
    def workspace_params
        params.require(:building).permit(:workspace_type, :availability, :building_id)
    end 
end
