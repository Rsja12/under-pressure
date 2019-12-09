class AddColumnsToDiveSites < ActiveRecord::Migration[6.0]
  def change_table
    add_timestamps(:dive_sites)
  end
end
