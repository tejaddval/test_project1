class CreateCycles < ActiveRecord::Migration
  def self.up
    create_table :cycles do |t|
      t.string :name
      t.integer :height
      t.float :price
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :cycles
  end
end
