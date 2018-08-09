class WorkspacesController < ApplicationController
    before_action :admin_access
    before_action :current_user
    skip_before_action :admin_access, only: [:index]
    
    def index 
        @workspaces = Workspace.all
    end 
    
    def new
       # @@user = current_user
        @workspace = Workspace.new
    end 
    
    def create
        @building = Building.find_by(id: params[:workspace][:building_id])
    #@user = current_user
        @workspace = @building.workspaces.build(workspace_params)
        @workspace.availability = true
       
        if @workspace.save
            redirect_to building_path(@building.id)     
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
