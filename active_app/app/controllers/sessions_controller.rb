class SessionsController < ApplicationController

    def new

    
    end

    def create
         @profile = PersonalProfile.find_by(name: params[:name])
         if @profile && @profile.authenticate(params[:password])
            session[:user_id]=@profile.id
            flash[:alert]="Successfully Logged-In"
            redirect_to personal_profile_path(@profile)
        else
          flash[:alert] = "Wrong Username or Password"
          redirect_to '/login'
        end
    end

    def destroy
        session.delete :user_id
        redirect_to "/"
    end

    def facebook
       @profile = PersonalProfile.find_or_create_by(uid: auth['uid']) do |profile|
        profile.name = auth['info']['name']
        profile.email = auth['info']['email']
        profile.password_digest = SecureRandom.hex  
      end
       if @profile.save
        session[:user_id] = @profile.id
        flash[:alert]="Successfully Logged-In"
        redirect_to personal_profile_path(@profile)
      end
    end
    
    private

    def auth
      request.env['omniauth.auth']
    end

    end