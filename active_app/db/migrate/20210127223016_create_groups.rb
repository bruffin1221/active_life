class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :nsme
      t.string :topic
      t.string :description
    end
  end
end
