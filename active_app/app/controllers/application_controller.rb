class ApplicationController < ActionController::Base
    

    def current_user
       PersonalProfile.find_by_id(session[:user_id])
      end
    
      
end
