class MotivationsController<ApplicationController
    
    def new
       @motivation=Motivation.new
    end
    
    
    def create
        @motivation=Motivation.find_or_create_by(motivation_params)
        redirect_to motivation_path(@motivation)
    end
       
    def show 
        @motivation=Motivation.find_by_id(params[:id])
    end
       
    private
    
    def motivation_params
        params.require(:motivation).permit(:motivator, :motivation_type, :pressure, :new_motivator)
    end
       
       


end