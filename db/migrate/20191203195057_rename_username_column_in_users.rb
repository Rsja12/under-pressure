class RenameUsernameColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :username, :last_name
  end
end
