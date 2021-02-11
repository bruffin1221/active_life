class DiscussionsController < ApplicationController
    before_action :require_login


    def show
        @discussion=Discussion.find_by_id(params[:id])
    end

    def edit
      @discussion=Discussion.find_by_id(params[:id])  
    end
    
    def update
        @discussion = Discussion.find_by_id(params[:id])
        @discussion.update(name: params[:name])
        redirect_to discussion_path(@discussion)
    end
    


    def destroy
        @discussion=Discussion.find_by_id(params[:id])
        @discussion.destroy
        redirect_to groups_path
      end

      private

      def require_login
        if current_user.blank?
          redirect_to '/'
        end
      end

    
end