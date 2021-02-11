class GroupLeadersController < ApplicationController
    before_action :require_login

def index
    @group_leaders=GroupLeader.all
end


def new 
    @leader = GroupLeader.new(personal_profile_id: params[:personal_profile_id])
    if current_user.id!=@leader.personal_profile_id || !current_user.group_leader.nil?
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
    end
end

def create
    @leader= GroupLeader.find_or_create_by(leader_params) 
    @leader.update(leader_name: current_user.name)
    redirect_to group_leader_path(@leader)
end

def show
    @leader=GroupLeader.find_by_id(params[:id])
    if current_user.id!=@leader.personal_profile_id  
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
    end
end

def edit
    @leader=GroupLeader.find_by_id(params[:id]) 
    if current_user.id!=@leader.personal_profile_id
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
    end
end

def update
    @leader = GroupLeader.find(params[:id])
    @leader.update(leader_params)
    redirect_to group_leader_path(@leader)
end

def destroy
    @leader=GroupLeader.find(params[:id])
    @leader.destroy
    redirect_to group_leaders_path(@leader)
end



private 

def leader_params
    params.require(:group_leader).permit(:interest, :description, :personal_profile_id) 
end

def require_login
    if current_user.blank?
      redirect_to '/'
    end
  end

end