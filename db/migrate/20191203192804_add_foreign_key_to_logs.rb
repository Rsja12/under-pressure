class AddForeignKeyToLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :logs, :dive_site_id, :integer
  end
end
