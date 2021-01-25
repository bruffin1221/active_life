class Motivation < ActiveRecord::Base
belongs_to :personal_profile
has_one :goal
has_one :available
end 