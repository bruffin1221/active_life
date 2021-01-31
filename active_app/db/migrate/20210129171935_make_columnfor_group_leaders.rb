class MakeColumnforGroupLeaders < ActiveRecord::Migration[6.0]
  
  def change
    add_column :group_leaders, :personal_profile_id, :integer
  end
end
