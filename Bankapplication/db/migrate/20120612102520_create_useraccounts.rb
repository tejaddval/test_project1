class CreateUseraccounts < ActiveRecord::Migration
  def self.up
    create_table :useraccounts do |t|
      t.string :account_no
      t.integer :user_id
      

      t.timestamps
    end
  end

  def self.down
    drop_table :useraccounts
  end
end
