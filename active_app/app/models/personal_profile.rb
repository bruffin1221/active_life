class PersonalProfile < ActiveRecord::Base
    
    belongs_to :motivation
    has_secure_password

end 