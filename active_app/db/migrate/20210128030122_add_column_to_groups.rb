class AddColumnToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :group_leader_id, :integer
  end
end
