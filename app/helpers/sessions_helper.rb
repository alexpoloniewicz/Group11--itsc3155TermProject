module SessionsHelper
    def log_in(manager)
        session[:manager_id] = manager.id
    end
    
    def current_manager
        if session[:manager_id]
            @current_manager ||= Manager.find_by(id: session[:manager_id])
        else 
            @current_manager = nil
        end
    end
    
    def log_out
        session.delete(:manager_id)
        @current_manager = nil
    end
end
