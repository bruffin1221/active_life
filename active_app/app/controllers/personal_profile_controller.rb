class Personal_Profile< ApplicationController

    def create

    end 


    def

    


private

def profile_params
    params.requrie(:info).permit(:name, :age, :job, ::weight, :height)

end

end