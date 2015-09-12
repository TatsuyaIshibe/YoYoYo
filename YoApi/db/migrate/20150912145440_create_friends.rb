class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
