class PersonalProfilesController<ApplicationController
    before_action :require_login, except: [:new, :create]
    
    def new
        @profile= PersonalProfile.new
    end 


    def create 
        @profile=PersonalProfile.new(profile_params)
        if !@profile.blank?
            @profile.save
            session[:user_id]=@profile.id
            flash[:alert] = "You Just Signed Up."
            redirect_to personal_profile_path(@profile)
        else
          flash[:alert] = "Please add name and password"
          redirect_to personal_profiles_new_path 
        end
    end

    def show
      if current_user.id==params[:id].to_i
        @profile = PersonalProfile.find_by_id(current_user.id)
      else 
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
      end
    end

    def edit
      user = params[:id].to_i
      if current_user.id==params[:id].to_i
        @profile= PersonalProfile.find_by_id(current_user.id)
      else 
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
      end
    end

    def update
        @profile = PersonalProfile.find(params[:id])
        if @profile.update(profile_params)
          redirect_to personal_profile_path(@profile)
        else
          render 'edit', :alert => "Please Fill In All Forms"
        end
      end

      def destroy
         @profile=PersonalProfile.find(params[:id])
         @profile.destroy
        redirect_to "/"
      end

    
private

def profile_params
    params.require(:personal_profile).permit(:name, :email, :age, :occupation, :weight, :height, :back_pain, :serious_illness,
    :serious_injuries, :password, :password_confirmation)
end

def require_login
    if current_user.blank?
      redirect_to '/'
    end
  end

end