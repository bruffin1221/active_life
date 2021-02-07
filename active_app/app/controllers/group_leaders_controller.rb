class GroupLeadersController < ApplicationController
    before_action :require_login

def index
    @group_leaders=GroupLeader.all
end


def new 
    @leader = GroupLeader.new(personal_profile_id: params[:personal_profile_id])
end

def create
    @leader= GroupLeader.find_or_create_by(leader_params)
    redirect_to group_leader_path(@leader)
end

def show
    @leader=GroupLeader.find_by_id(params[:id])
end

def edit
    @leader=GroupLeader.find_by_id(params[:id])    
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
    params.require(:group_leader).permit(:leader_name, :interest, :description, :personal_profile_id) 
end

def require_login
    if current_user.blank?
      redirect_to '/'
    end
  end

end