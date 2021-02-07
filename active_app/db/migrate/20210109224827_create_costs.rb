class CreateCosts < ActiveRecord::Migration[6.0]
  
  def change
    create_table :costs do |t|
      t.string :activities
      t.string :gym
      t.string :track
      t.string :home
      t.string :park
      t.string :nature_area
      t.string :place
      t.string :equipment_1
      t.string :cost_1
      t.string :equipment_2
      t.string :cost_2
      t.string :equipment_3
      t.string :cost_3
      t.string :equipment_4
      t.string :cost_4
      t.string :afford
      t.string :eating_out
      t.string :smoking
      t.string :drinking
      t.string :subscription
      t.string :other_costs
      t.string :household_chores
      t.string :children
      t.string :work
      t.string :school
      t.string :other_responsibilities
      t.string :time
      t.string :television
      t.string :social_media
      t.string :video_games
      t.string :internet_surfing
      t.string :other_activities   
      t.string :dedicated
      t.string :time_spent
      t.string :time_of_day
      t.string :days_a_week
    end
  end

end
