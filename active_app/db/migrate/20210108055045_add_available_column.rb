class AddAvailableColumn < ActiveRecord::Migration[6.0]
  
  def change
    add_column :availables, :man_made, :string
  end

end
