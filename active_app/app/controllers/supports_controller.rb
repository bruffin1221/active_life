class SupportsController<ApplicationController
    before_action :require_login

def show
  @support=Support.find_by_id(params[:id])
  if current_user.id!=@support.personal_profile_id  
    flash[:alert] = "Cannot view this page"
    redirect_to root_path
  end
end

def new
@support=Support.new(personal_profile_id: params[:personal_profile_id])
if current_user.id!=@support.personal_profile_id || !current_user.goal.nil?
  flash[:alert] = "Cannot view this page"
  redirect_to root_path
end
end

def create
@support=Support.find_or_create_by(support_params)
profile=@support.personal_profile
@support.update(motivation_id: profile.motivation.id, goal_id: profile.goal.id, available_id: profile.available.id, cost_id:  profile.cost.id) 
redirect_to support_path(@support)
end

def edit
    @support=Support.find_by_id(params[:id])
    if current_user.id!=@support.personal_profile_id
      flash[:alert] = "Cannot view this page"
      redirect_to root_path
  end
end

def update
    @support=Support.find_by_id(params[:id])
    @support.update(cost_params)
    redirect_to cost_path(@support)
end

def destroy
  @support=Support.find_by_id(params[:id])
  @support.destroy
  redirect_to personal_profile_path(@support.personal_profile)
end

private

def support_params
    params.require(:support).permit(:engage, :walks, :sports, :park_play, :outdoor_activities, :other_activities,
    :television, :gaming, :reading, :other_indoor,  :participate, :family_support, :friend_activities, 
    :friend_physical, :f_physical, :friend_name, :hiking, :cycling, :walking_paths, :rec_centers, :other, 
    :groups, :group_parts, :klass, :personal_profile_id)
end

def require_login
    if current_user.blank?
      redirect_to '/'
    end
  end

end