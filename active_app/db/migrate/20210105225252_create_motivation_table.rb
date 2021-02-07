class CreateMotivationTable < ActiveRecord::Migration[6.0]
  def change
    create_table :motivations do |t|
      t.string :motivator
      t.string :motivation_type
      t.string :pressure
      t.string :new_motivator 
    end
  end
end
