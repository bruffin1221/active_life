class AddMoreColumnsToPersonalProfiles < ActiveRecord::Migration[6.0]
  def change
   add_column :personal_profiles, :google_token, :string 
   add_column :personal_profiles, :google_refresh_token, :string 
   add_column :personal_profiles, :image, :string 
  end


end
