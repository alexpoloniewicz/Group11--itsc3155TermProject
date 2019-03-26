class SessionsController < ApplicationController
  def new
  end
  
  def create
    manager = Manager.find_by(username: session_params[:username])
    if session_params[:password] == manager.password
      redirect_to manager
    else
      render 'new'
    end
  end
  
  def destroy
  end
end

private
def session_params
   params.require(:session).permit(:username, :password) 
end