class CreateDiveSitesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :dive_sites do |t|
      t.string :name
    end
  end
end
