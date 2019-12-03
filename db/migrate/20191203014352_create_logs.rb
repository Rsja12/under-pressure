class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.datetime :date
      t.string :remarks
      t.string :dive_site
      t.string :dive_buddy
      t.integer :user_id
      t.integer :depth
      t.integer :dive_time
      t.integer :visibility

      t.timestamps
    end
  end
end
