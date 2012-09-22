class CreateHistoryTeams < ActiveRecord::Migration
  def change
    create_table :history_teams do |t|
      t.string :Year
      t.string :FullName
      t.string :LastName
      t.string :Record
      t.integer :Wins
      t.integer :Losses
      t.integer :Ties
      t.string :Percent
      t.string :GamesBehind
      t.string :Playoffs
      t.string :RegularSeasonFinish
      t.string :PlayoffFinish

      t.timestamps
    end
  end
end
