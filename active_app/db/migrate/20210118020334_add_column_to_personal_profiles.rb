class AddColumnToPersonalProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :personal_profiles, :back_pain, :string
    add_column :personal_profiles, :serious_illness, :string
    add_column :personal_profiles, :serious_injuries, :string
    add_column :personal_profiles, :password_digest, :string
  end
end
