class GoalsController < ApplicationController

def new
    @goal=Goal.new(personal_profile_id: params[:personal_profile_id])
end

def create
    @goal=Goal.find_or_create_by(goal_params)
    motivated=@goal.personal_profile
    @goal.update(motivation_id: motivated.motivation.id)
    redirect_to goal_path(@goal)
end

def show 
    @goal=Goal.find_by_id(params[:id])
end

def edit
    @goal= Goal.find_by_id(params[:id])
end

def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    redirect_to goal_path(@goal)
end

def destroy
  @goal=Goal.find(params[:id])
  @goal.destroy
  redirect_to personal_profile_path(@goal.personal_profile)
end

private

def goal_params
    params.require(:goal).permit(:add_goal, :objective_1, :strategy_1, :tactic_1, :tactic_2, :objective_2, 
    :strategy_2, :tactic_3, :tactic_4, :objective_3, :strategy_3, :tactic_5, :tactic_6, :personal_profile_id)
end

end
