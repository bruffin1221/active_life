class GroupLeadersController < ApplicationController

def index
    @group_leaders=GroupLeader.all
end


def new 
    @leader=GroupLeader.new
end

def create
    @leader= GroupLeader.find_or_create_by(leader_params)
    redirect_to group_leader_path(@leader)
end

def show
    @leader=GroupLeader.find_by_id(params[:id])
end




private 

def leader_params
    params.require(:group_leader).permit(:leader_name, :interest, :description)
end

end