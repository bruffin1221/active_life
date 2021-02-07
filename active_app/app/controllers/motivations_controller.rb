class MotivationsController<ApplicationController
  before_action :require_login



  def show
      @motivation=Motivation.find_by_id(params[:id])
      if current_user.id!=@motivation.personal_profile_id
        flash[:alert] = "Cannot view this page"
        redirect_to personal_profile_path(@motivation) 
      end
    end

    def new
        @motivation = Motivation.new(personal_profile_id: params[:personal_profile_id])
        if !current_user.motivation.nil?
          flash[:alert] = "Cannot view this page"
          redirect_to root_path
        end
      end
     
    def create
        @motivation=Motivation.create(motivation_params)
        redirect_to motivation_path(@motivation)    
    end

    def edit
      @motivation= Motivation.find_by_id(params[:id].to_i)
      if current_user.id!=@motivation.personal_profile_id
        flash[:alert] = "Cannot view this page"
        redirect_to personal_profile_path(@motivation)
      end
    end

    def update
        @motivation = Motivation.find(params[:id])
        @motivation.update(motivation_params)
        redirect_to motivation_path(@motivation)
    end

    def destroy
      @motivation=Motivation.find(params[:id])
      @motivation.destroy
      redirect_to personal_profile_path(@motivation.personal_profile)
   end

     
       
    private
    
    def motivation_params
        params.require(:motivation).permit(:motivator, :motivation_type, :pressure, :new_motivator, :personal_profile_id)
    end

    def require_login
      if current_user.blank?
        redirect_to '/'
      end
    end


end