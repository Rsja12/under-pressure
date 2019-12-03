class RemoveDiveNumberFromLogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :logs, :dive_number
  end
end
