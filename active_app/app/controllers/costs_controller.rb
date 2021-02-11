class CostsController < ApplicationController
    before_action :require_login
    
    def show
        @cost=Cost.find_by_id(params[:id])
        if current_user.id!=@cost.personal_profile_id  
            flash[:alert] = "Cannot view this page"
            redirect_to root_path
        end
    end
    
    def new
        @cost=Cost.new(personal_profile_id: params[:personal_profile_id])
        if current_user.id!=@cost.personal_profile_id || !current_user.goal.nil?
            flash[:alert] = "Cannot view this page"
            redirect_to root_path
        end
    end
    
    def create
        @cost=Cost.find_or_create_by(cost_params)
        profile=@cost.personal_profile
        @cost.update(motivation_id: profile.motivation.id, goal_id: profile.goal.id, available_id: profile.available.id) 
        redirect_to cost_path(@cost)
    end

    def edit
        @cost=Cost.find_by_id(params[:id])
        if current_user.id!=@cost.personal_profile_id
            flash[:alert] = "Cannot view this page"
            redirect_to root_path
        end
    end
  
    def update
        @cost =Cost.find_by_id(params[:id])
        @cost.update(cost_params)
        redirect_to cost_path(@cost)
    end
  
    def destroy
      @cost=Cost.find_by_id(params[:id])
      @cost.destroy
      redirect_to personal_profile_path(@cost.personal_profile)
   end
    
    private 
    
    def cost_params
        params.require(:cost).permit(:activities, :gym, :track, :home, :park, :nature_area, :place, :equipment_1,
        :cost_1, :equipment_2, :cost_2, :equipment_3, :cost_3, :equipment_4, :cost_4, :afford, :eating_out, 
        :smoking, :drinking, :subscription, :other_costs, :household_chores, :children, :work, :school, 
        :other_responsibilities, :television, :time, :social_media, :video_games, :internet_surfing, 
        :other_activities, :dedicated, :time_spent, :time_of_day, :days_a_week, :personal_profile_id)
    end

    def require_login
        if current_user.blank?
          redirect_to '/'
        end
      end


end 
        