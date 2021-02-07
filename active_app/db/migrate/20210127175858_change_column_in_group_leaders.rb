class ChangeColumnInGroupLeaders < ActiveRecord::Migration[6.0]
  def change
    add_column :group_leaders, :description, :string
    remove_column :group_leaders, :destroy, :string
  end
end
