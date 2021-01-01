class CreatePersonalProfile < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_profiles do |t|
      t.string :name
      t.integer :age
      t.string :occupation
      t.integer :weight
      t.string :height

    end
  end
end
