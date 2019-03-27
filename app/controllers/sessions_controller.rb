class SessionsController < ApplicationController
  def new
    if !current_manager.nil?
      redirect_to Manager.find_by(id: session[:manager_id])
    end
  end
  
  def create
    manager = Manager.find_by(username: session_params[:username])
    if manager && manager.authenticate(session_params[:password])
      log_in manager
      redirect_to manager
    else
      render 'new'
    end
  end
  
  def destroy
    # see session helper
    log_out
    redirect_to welcome_index_path
  end
end

private
def session_params
   params.require(:session).permit(:username, :password) 
end