class SessionsController < ApplicationController

    def new

    
    end

    def create
         @profile = PersonalProfile.find_by(name: params[:personal_profile][:name])
         if @profile && @profile.authenticate(params[:personal_profile][:password])
            session[:user_id]=@profile.id
            redirect_to personal_profile_path(@profile)
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :user_id
        redirect_to "/"
    end
   

end