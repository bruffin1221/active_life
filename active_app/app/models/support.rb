class Support < ActiveRecord::Base
    belongs_to :available
    belongs_to :cost
    belongs_to :goal
    belongs_to :personal_profile
end