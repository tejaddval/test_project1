class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.string:account_no 
      t.integer:user_id
      t.float :debit
      t.float :credit
      t.float :balance

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
