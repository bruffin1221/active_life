class PersonalProfile < ActiveRecord::Base
    has_one :group_leader
    has_one :motivation
    has_one :goal
    has_one :available
    has_one :cost
    has_one :support
    has_secure_password

end 