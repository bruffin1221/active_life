class CreateAvailables < ActiveRecord::Migration[6.0]
  def change
    create_table :availables do |t|
      t.string :neighborhood
      t.string :safety
      t.string :natural
      t.string :gym
      t.string :classes
      t.string :physical
      t.string :place
    end
  end
end
