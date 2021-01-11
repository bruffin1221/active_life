class SupportsController<ApplicationController

def show
@support=Support.find_by_id(params[id])
end

def new
@support=Support.new
end

def create
@support=Support.find_or_create_by(support_params)
redirect_to support_path(@support)
end

private

def support_params
params(:support).permit(:engage, :walks, :sports, :park_play, :outdoor_activities, :other_activities,
:television, :gaming, :reading, :other_indoor,  :participate, :family_support, :friend_activities, 
:friend_physical, :f_physical, friend_name, :hiking, :cycling, :walking_paths, :rec_centers, :other, 
:groups, group_parts)
end

end