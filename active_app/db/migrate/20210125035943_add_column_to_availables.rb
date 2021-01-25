class AddColumnToAvailables < ActiveRecord::Migration[6.0]
  def change
    add_column :availables, :personal_profile_id, :integer
    add_column :availables, :motivation_id, :integer
    add_column :availables, :goal_id, :integer
  end
end
