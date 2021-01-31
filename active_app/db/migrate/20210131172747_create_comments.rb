class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :write_comment
      t.integer :discussion_id
    end
  end

end
