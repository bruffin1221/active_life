class CreateGroupLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :group_leaders do |t|
      t.string :leader_name
      t.string :interest
      t.string :destroy
    end
  end
end
