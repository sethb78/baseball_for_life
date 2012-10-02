class AddPasswordConfirmationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_confirmation, :varchar
  end
end
