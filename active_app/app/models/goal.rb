class Goal < ActiveRecord::Base
    belongs_to :personal_profile
    belongs_to :motivation
    has_one :available

end 