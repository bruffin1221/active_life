class RemoveColumnsFromPersonalProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :personal_profiles, :google_token
    remove_column :personal_profiles, :google_refresh_token 
    remove_column :personal_profiles, :image
  end
end
