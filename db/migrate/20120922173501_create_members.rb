class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :FullName
      t.string :FirstName
      t.string :LastName
      t.string :Card
      t.text :Bio
      t.string :Email
      t.string :Twitter

      t.timestamps
    end
  end
end
