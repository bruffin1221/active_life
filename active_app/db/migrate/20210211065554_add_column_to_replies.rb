class AddColumnToReplies < ActiveRecord::Migration[6.0]
  def change
    add_column :replies, :personal_profile_id, :integer
  end
end
