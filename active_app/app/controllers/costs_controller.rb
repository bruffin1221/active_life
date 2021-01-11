class CostsController < ApplicationController
    
    def show
        @cost=Cost.find_by_id(params[:id])
    end
    
    def new
        @cost=Cost.new
    end
    
    def create
        @cost=Cost.find_or_create_by(cost_params)
        redirect_to cost_path(@cost)
    end
    
    private 
    
    def cost_params
        params.require(:cost).permit(:activities, :gym, :track, :home, :park, :nature_area, :place, :equipment_1,
        :cost_1, :equipment_2, :cost_2, :equipment_3, :cost_3, :equipment_4, :cost_4, :afford, :eating_out, 
        :smoking, :drinking, :subscription, :other_costs, :household_chores, :children, :work, :school, 
        :other_responsibilities, :television, :time, :social_media, :video_games, :internet_surfing, 
        :other_activities, :dedicated, :time_spent, :time_of_day, :days_a_week)
    end


end 
        