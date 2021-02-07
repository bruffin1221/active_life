class ColumnforPersonalProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :personal_profiles, :uid, :string 
  end
end
