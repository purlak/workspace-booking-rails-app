class WorkspacesController < ApplicationController
    before_action :admin_access
    skip_before_action :admin_access, only: [:index]
    
    def index 
        @workspaces = Workspace.all
    end 
    
    def new
         @workspace = Workspace.new
    end 
    
    def create
        @building = Building.find_by(id: params[:workspace][:building_id])
        @workspace = @building.workspaces.build(workspace_params)
        #@workspace.user_id = current_user.id
        
        if @workspace.save
            #binding.pry
            redirect_to @workspace     
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
