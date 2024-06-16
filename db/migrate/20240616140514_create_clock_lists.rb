class CreateClockLists < ActiveRecord::Migration[7.1]
  def up
    create_table :clock_lists do |t|
      t.integer :user_id
      t.datetime :entry_date
      t.datetime :clock_in
      t.datetime :clock_out
      t.boolean :clocking_in
      t.text :note
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def down
    drop_table :clock_lists
  end
end
