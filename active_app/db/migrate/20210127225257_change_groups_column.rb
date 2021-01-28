class ChangeGroupsColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :name, :string
    remove_column :groups, :nsme, :string
  end
end
