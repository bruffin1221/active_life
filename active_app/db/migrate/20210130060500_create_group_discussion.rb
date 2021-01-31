class CreateGroupDiscussion < ActiveRecord::Migration[6.0]
  def change
    create_table :group_discussions do |t|
      t.belongs_to :group, index: true, foreign_key: true
      t.belongs_to :discussion, index: true, foreign_key: true
    end
  end
end
