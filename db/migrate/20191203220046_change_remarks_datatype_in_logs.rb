class ChangeRemarksDatatypeInLogs < ActiveRecord::Migration[6.0]
  def change
    change_column :logs, :remarks, :text
  end
end
