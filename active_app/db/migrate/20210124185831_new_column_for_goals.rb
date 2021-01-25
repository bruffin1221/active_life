class NewColumnForGoals < ActiveRecord::Migration[6.0]
 
  def change
    add_column :goals, :motivation_id, :integer
 
  end

end
