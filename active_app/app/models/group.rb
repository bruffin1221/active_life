class Group < ActiveRecord::Base
    belongs_to :group_leader

    has_many :group_discussions, dependent: :destroy
    has_many :discussions, through: :group_discussions
    accepts_nested_attributes_for :discussions
    

    def discussions_attributes=(discussion_attributes)
        discussion_attributes.values.each do |discussion_attribute|
          discussion = Discussion.find_or_create_by(discussion_attribute)
          self.discussions << discussion
        end
      end
end