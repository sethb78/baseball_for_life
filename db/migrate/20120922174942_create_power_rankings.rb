class CreatePowerRankings < ActiveRecord::Migration
  def change
    create_table :power_rankings do |t|
      t.integer :Week
      t.string :Date
      t.integer :Rank
      t.string :Team
      t.string :Record
      t.integer :LastWeek
      t.string :Move
      t.text :Comments
      t.text :Stud
      t.text :Dud

      t.timestamps
    end
  end
end
