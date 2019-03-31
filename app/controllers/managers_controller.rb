class ManagersController < ApplicationController
    def index
        
    end
    
    def new 
        #@manager = Manager.new
    end
    
    def create
        @manager = Manager.new(manager_params)
        if @manager.save
            redirect_to @manager 
        end
    end
    
    def show 
        @manager = Manager.find_by(id: current_manager[:id])
    end
end

private
def manager_params
   params.require(:manager).permit(:username, :password, :password_confirmation) 
end
