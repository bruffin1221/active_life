class CreateGoalsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :objective_1
      t.string :strategy_1
      t.string :tactic_1
      t.string :tactic_2
      t.string :objective_2
      t.string :strategy_2
      t.string :tactic_3
      t.string :tactic_4
      t.string :objective_3
      t.string :strategy_3
      t.string :tactic_5
      t.string :tactic_6
    end
  end
end
