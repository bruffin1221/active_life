class MoreColumnsForPersonalProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :personal_profiles, :google_token, :string
    add_column :personal_profiles, :google_refresh_token, :string
  end
end
