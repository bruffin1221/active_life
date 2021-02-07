class AddColumnToMotivations < ActiveRecord::Migration[6.0]
  
  def change
    add_column :motivations, :personal_profile_id, :integer
  end
  
end
