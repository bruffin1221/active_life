class Available < ActiveRecord::Base
    belongs_to :personal_profile
    belongs_to :motivation
    belongs_to :goal
end 