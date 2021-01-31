class GroupLeader < ActiveRecord::Base
   belongs_to :personal_profile
   has_many :groups
   has_many :discussions, through: :groups
end