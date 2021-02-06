class AddColumnToPersonalProfile < ActiveRecord::Migration[6.0]
  def change
   add_column :personal_profiles, :email, :string 
  end
  
end
