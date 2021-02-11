class AvailablesController <ApplicationController
  before_action :require_login
   
    def new
      @available=Available.new(personal_profile_id: params[:personal_profile_id])
      if current_user.id!=@available.personal_profile_id || !current_user.available.nil?
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
      end
    end
    
    
    def create
      @available=Available.find_or_create_by(available_params)
      profile=@available.personal_profile
      @available.update(motivation_id: profile.motivation.id, goal_id: profile.goal.id) 
      redirect_to available_path(@available)
    end

    def show
      @available= Available.find_by_id(params[:id])
      if current_user.id!=@available.personal_profile_id  
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
      end
    end

    def edit
      @available=Available.find_by_id(params[:id])
      if current_user.id!=@available.personal_profile_id
        flash[:alert] = "Cannot view this page"
        redirect_to root_path
      end
    end

  def update
      @available =Available.find_by_id(params[:id])
      @available.update(available_params)
      redirect_to available_path(@available)
  end

  def destroy
    @available=Available.find(params[:id])
    @available.destroy
    redirect_to personal_profile_path(@available.personal_profile)
 end

    private
    
    def available_params
       params.require(:available).permit(:neighborhood, :man_made, :safety, :natural, :gym, :classes, :physical, 
       :place, :personal_profile_id)
    end

    def require_login
      if current_user.blank?
        redirect_to '/'
      end
    end

    end
    