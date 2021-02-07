class MakeColumnForSupports < ActiveRecord::Migration[6.0]
  
  def change
    add_column :supports, :personal_profile_id, :integer
    add_column :supports, :motivation_id, :integer
    add_column :supports, :goal_id, :integer
    add_column :supports, :available_id, :integer
    add_column :supports, :cost_id, :integer
  end
end
