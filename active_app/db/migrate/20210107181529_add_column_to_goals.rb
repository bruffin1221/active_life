class AddColumnToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :add_goal, :string
  end
end
