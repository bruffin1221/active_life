class GroupsController < ApplicationController
  before_action :require_login

  def index
    if !params[:group_leader_id]
      @groups=Group.all
      @user=current_user
    elsif GroupLeader.exists?(params[:group_leader_id]) 
      group_leaders =GroupLeader.find_by_id(params[:group_leader_id])
      @groups = group_leaders.groups
      @user=current_user
    elsif !GroupLeader.exists?(params[:group_leader_id]) 
      redirect_to group_leaders_path
    end
  end
  
    def new
        if params[:group_leader_id] && !GroupLeader.exists?(params[:group_leader_id])
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
      if params[:group_leader_id] && GroupLeader.exists?(params[:group_leader_id]) && !Group.exists?(params[:id])
        groupleader=GroupLeader.find_by_id(params[:group_leader_id])
        redirect_to group_leader_path(groupleader)
      elsif params[:group_leader_id] && GroupLeader.exists?(params[:group_leader_id])
        group_leader = GroupLeader.find_by_id(params[:group_leader_id])
        @group= group_leader.groups.find_by_id(params[:id])
      elsif !params[:group_leader_id]
        @group=Group.find_by_id(params[:id])
      elsif params[:group_leader_id] && !GroupLeader.exists?(params[:group_leader_id]) 
        redirect_to groups_path
      end
    end

      def edit
        if params[:group_leader_id] && GroupLeader.exists?(params[:group_leader_id])
          group_leader = GroupLeader.find_by_id(params[:group_leader_id])
          @group = group_leader.groups.find_by(id: params[:id])
        elsif !params[:group_leader_id]
          @group=Group.find_by_id(params[:id])
        elsif params[:group_leader_id] && !GroupLeader.exists?(params[:group_leader_id])
          redirect_to groups_path
        end
      end

      def update
        @group =Group.find_by_id(params[:id])
        @group.update(group_params)
        if @group.save
          redirect_to @group
        else
          render :edit
        end
      end

      def destroy
        @group=Group.find_by_id(params[:id])
        @group.destroy
        redirect_to group_leader_path(@group.group_leader.id)
    end
     
          
   
      
    private 
    
    def group_params
        params.require(:group).permit(:name, :topic, :description, :group_leader_id, discussion_ids:[], discussions_attributes: [:name] )
    end

    def require_login
      if current_user.blank?
        redirect_to '/'
      end
    end


    
end

 