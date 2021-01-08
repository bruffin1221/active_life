class PersonalProfilesController<ApplicationController

    def new
        @profile= PersonalProfile.new
    end 


    def create 
        @profile=PersonalProfile.find_or_create_by(profile_params)
        redirect_to personal_profile_path(@profile)
    end

    def show
        @profile= PersonalProfile.find_by_id(params[:id])
    end

    
private

def profile_params
    params.require(:personal_profile).permit(:name, :age, :occupation, :weight, :height)
end

end