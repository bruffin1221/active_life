class CreateReply < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.string :write_reply
      t.integer :comment_id
    end
  end
end
