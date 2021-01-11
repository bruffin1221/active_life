class AddColumnToSupports < ActiveRecord::Migration[6.0]
  
  def change
    add_column :supports, :other, :string
  end

end
