class GoalsController < ApplicationController

def new
    @goal=Goal.new
end

def create
    @goal=Goal.find_or_create_by(goal_params)
    redirect_to goal_path(@goal)
end

def show 
    @goal=Goal.find_by_id(params[:id])
end

private

def goal_params
    params.require(:goal).permit(:add_goal, :objective_1, :strategy_1, :tactic_1, :tactic_2, :objective_2, 
    :strategy_2, :tactic_3, :tactic_4, :objective_3, :strategy_3, :tactic_5, :tactic_6)
end

end
