class AddDiveNumberToLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :logs, :dive_number, :integer
  end
end
