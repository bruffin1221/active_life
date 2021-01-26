class Available < ActiveRecord::Base
    belongs_to :personal_profile
    belongs_to :motivation
    belongs_to :goal
    has_one :cost
    has_one :support
end 