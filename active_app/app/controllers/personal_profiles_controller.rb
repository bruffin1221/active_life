class PersonalProfilesController<ApplicationController
    before_action :require_login, except: [:new, :create]
    
    def new
        @profile= PersonalProfile.new
    end 


    def create 
        @profile=PersonalProfile.new(profile_params)
        if @profile.valid?
            @profile.save
            session[:user_id]=@profile.id
            redirect_to personal_profile_path(@profile)
        else
            redirect_to "/"
        end
    end

    def show
        @profile= PersonalProfile.find_by_id(params[:id])
    end

    
private

def profile_params
    params.require(:personal_profile).permit(:name, :age, :occupation, :weight, :height, :back_pain, :serious_illness,
    :serious_injuries, :password, :password_confirmation)
end

def require_login
    if current_user.blank?
      redirect_to '/'
    end
  end

end