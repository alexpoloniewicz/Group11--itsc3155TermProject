class SessionsController < ApplicationController
  def new
    # if the manager(user) is logged in, they will be redirected to another page
    if !current_manager.nil? # defined in session helper
      redirect_to Manager.find_by(id: session[:manager_id])
    end
  end
  
  def create
    @manager = Manager.find_by(username: session_params[:username])
    if @manager && @manager.authenticate(session_params[:password])
      log_in @manager # defined in session helper
      redirect_to @manager
    else
      render 'new' #render new.html.erb if the login fails
    end
  end
  
  def destroy
    log_out # defined in session helper
    redirect_to welcome_index_path
  end
end

private
def session_params
   params.require(:session).permit(:username, :password) 
end