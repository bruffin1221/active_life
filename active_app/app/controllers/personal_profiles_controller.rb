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
            redirect_to personal_profile_path(@profile), :alert => "You Just Signed Up."
        else
            redirect_to "/", :alert => "Please Fill In All Forms"
        end
    end

    def show
        @profile= PersonalProfile.find_by_id(params[:id])
    end

    def edit
        @profile= PersonalProfile.find_by_id(params[:id])
    end

    def update
        @profile = PersonalProfile.find(params[:id])
        if @profile.update(profile_params)
          redirect_to personal_profile_path(@profile), :alert => "You Just Updated Your User Account"
        else
          render 'edit', :alert => "Please Fill In All Forms"
        end
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