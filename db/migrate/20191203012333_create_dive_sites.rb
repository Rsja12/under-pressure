class CreateDiveSites < ActiveRecord::Migration[6.0]
  def change
    create_table :dive_sites do |t|
      t.string :name

      t.timestamps
    end
  end
end
