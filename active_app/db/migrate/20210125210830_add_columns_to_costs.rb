class AddColumnsToCosts < ActiveRecord::Migration[6.0]
  def change
    add_column :costs, :personal_profile_id, :integer
    add_column :costs, :motivation_id, :integer
    add_column :costs, :goal_id, :integer
    add_column :costs, :available_id, :integer
  end
end
