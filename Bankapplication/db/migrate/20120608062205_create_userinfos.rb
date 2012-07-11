class CreateUserinfos < ActiveRecord::Migration
  def self.up
      create_table :userinfos do |t|
      t.string :first_name
      t.string :middle_name
      t.string :surname
      t.string :gender
      t.string :permanent_address
      t.string :correspondence_address
      t.string :e_mail
      t.string :contact_no
      

      t.timestamps
    end
  end

  def self.down
    drop_table :userinfos
  end
end
