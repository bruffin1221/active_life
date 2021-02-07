class AddColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :personal_profile_id, :integer
  end
end
