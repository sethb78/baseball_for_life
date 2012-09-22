class CreateKeepers < ActiveRecord::Migration
  def change
    create_table :keepers do |t|
      t.string :Last
      t.string :First
      t.string :string
      t.string :Position
      t.string :Year1
      t.integer :Year2
      t.integer :Year3
      t.integer :Year4
      t.integer :YearsKept

      t.timestamps
    end
  end
end
