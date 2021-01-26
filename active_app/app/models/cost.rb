class Cost< ActiveRecord::Base
    belongs_to :personal_profile 
    belongs_to :motivation
    belongs_to :goal
    belongs_to :available
    has_one :support

end 