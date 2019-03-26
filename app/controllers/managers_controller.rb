class ManagersController < ApplicationController
    def index
        #@manager = Manager.find(manager_params)
    end
    
    def new 
        #@manager = Manager.index
    end
    
    def create
        @manager = Manager.new(manager_params)
        
        if @manager.save
            
            redirect_to @article 
        end
    end
    
    def show 
        @manager = Manager.find(params[:id])
    end
end

private
def manager_params
   params.require(:manager).permit(:username, :password) 
end
