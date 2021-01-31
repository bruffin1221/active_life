class CreateDiscussion < ActiveRecord::Migration[6.0]
  def change
    create_table :discussions do |t|
      t.string :name
    end
  end
end
