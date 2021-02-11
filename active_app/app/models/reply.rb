class Reply < ActiveRecord::Base
    belongs_to :comment
    belongs_to :personal_profile
end