class Discussion< ActiveRecord::Base
    has_many :comments
    has_many :replies, through: :comments

    has_many :group_discussions, dependent: :destroy
    has_many :groups, through: :group_discussions

end