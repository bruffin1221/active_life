class GetRidColumnforPersonalProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :personal_profiles, :google_token, :string
    remove_column :personal_profiles, :google_refresh_token, :string 
    remove_column :personal_profiles, :image, :string
  end
end
