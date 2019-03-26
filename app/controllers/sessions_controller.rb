class SessionsController < ApplicationController
  def new
    if !current_manager.nil?
      redirect_to Manager.find_by(username: current_manager.username)
    end
  end
  
  def create
    manager = Manager.find_by(username: session_params[:username])
    if session_params[:password] == manager.password
      login manager
      redirect_to manager
    else
      render 'new'
    end
  end
  
  def destroy
    log_out
  end
end

private
def session_params
   params.require(:session).permit(:username, :password) 
end