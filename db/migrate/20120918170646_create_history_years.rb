class CreateHistoryYears < ActiveRecord::Migration
  def change
    create_table :history_years do |t|
      t.integer :year
      t.string :first
      t.string :second
      t.string :third
      t.string :regular_season_champ

      t.timestamps
    end
  end
end
