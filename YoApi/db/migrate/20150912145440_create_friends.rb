class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.int :from
      t.int :to

      t.timestamps
    end
  end
end
