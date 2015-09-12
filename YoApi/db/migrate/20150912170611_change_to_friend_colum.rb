class ChangeToFriendColum < ActiveRecord::Migration
  def change
    change_column(:friends, :from, :integer)
    change_column(:friends, :to, :integer)

  end
end
