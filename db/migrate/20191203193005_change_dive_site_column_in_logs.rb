class ChangeDiveSiteColumnInLogs < ActiveRecord::Migration[6.0]
  def change
    rename_column :logs, :dive_site, :dive_site_name
  end
end
