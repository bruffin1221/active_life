class Comment < ActiveRecord::Base
    has_many :replies
    belongs_to :discussion   
    belongs_to :personal_profile

end