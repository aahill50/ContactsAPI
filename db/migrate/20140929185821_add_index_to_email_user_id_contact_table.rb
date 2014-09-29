class AddIndexToEmailUserIdContactTable < ActiveRecord::Migration
  def change
    add_index :contacts, [:email, :user_id]
  end
end
