class MakeColumnForGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :personal_profile_id, :integer
  end
end
