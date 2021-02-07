class GroupDiscussion < ActiveRecord::Base
    belongs_to :group
    belongs_to :discussion
end