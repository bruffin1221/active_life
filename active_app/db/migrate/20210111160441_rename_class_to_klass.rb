class RenameClassToKlass < ActiveRecord::Migration[6.0]
  
  def change
    add_column :supports, :klass, :string

  end

end
