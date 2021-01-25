class PersonalProfile < ActiveRecord::Base
    has_one :motivation
    has_one :goal
    has_one :available
    has_secure_password

end 