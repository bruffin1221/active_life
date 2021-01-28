class GroupsController < ApplicationController

  def index
    if !params[:group_leader_id]
      @groups=Group.all
    elsif GroupLeader.exists?(params[:group_leader_id])
      group_leaders =GroupLeader.find_by_id(params[:group_leader_id])
      @groups = group_leaders.groups
    elsif !GroupLeader.exists?(params[:group_leader_id])
      redirect_to group_leaders_path
    end
  end
  
  

    def new
        if params[:group_leader_id] && !Group.exists?(params[:group_leader_id])
            redirect_to groups_path
          else
            @group = Group.new(group_leader_id: params[:group_leader_id])
          end
    end
    
    def create
        @group = Group.new(group_params)
        if @group.save
          redirect_to @group
        else
          render :new
        end
    end
    
    def show
        @group_leader = GroupLeader.find_by_id(params[:group_leader_id])
        if !@group_leader.nil? && Group.exists?(params[:id])
          @group= @group_leader.groups.find_by_id(params[:id])
        elsif @group_leaders.nil? || !Group.exists(params[:id])
              redirect_to groups_path
            else
              @group = Group.find(params[:id])
            end
          end
  
      
    private 
    
    def group_params
        params.require(:group).permit(:name, :topic, :description, :group_leader_id)
    end
    
end

 