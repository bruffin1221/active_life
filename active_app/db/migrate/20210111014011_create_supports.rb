class CreateSupports < ActiveRecord::Migration[6.0]

  def change
    create_table :supports do |t|
      t.string :engage
      t.string :walks
      t.string :sports
      t.string :park_play
      t.string :outdoor_activities
      t.string :other_activities
      t.string :television
      t.string :gaming
      t.string :reading
      t.string :other_indoor
      t.string :participate
      t.string :family_support
      t.string :friend_activities
      t.string :friend_physical
      t.string :f_physical
      t.string :friend_name
      t.string :hiking
      t.string :cycling
      t.string :walking_paths
      t.string :rec_centers
      t.string :groups
      t.string :group_parts
    end
  end

end
