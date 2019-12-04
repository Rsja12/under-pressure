class RemoveDivesiteNameFromLogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :logs, :dive_site_name
  end
end
