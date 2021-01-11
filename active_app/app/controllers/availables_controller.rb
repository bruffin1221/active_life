class AvailablesController <ApplicationController
    def show
      @available= Available.find_by_id(params[:id])
    end
    
    def new
      @available=Available.new
    end
    
    def create
      @available=Available.find_or_create_by(available_params)
       redirect_to available_path(@available)
    end
    
    private
    
    def  available_params
       params.require(:available).permit(:neighborhood, :man_made, :safety, :natural, :gym, :classes, :physical, 
       :place)
    end
    
    end
    