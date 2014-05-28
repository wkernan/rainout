class AddUserIdToNumbers < ActiveRecord::Migration
  def change
  	add_column :numbers, :user_id, :integer
  end
end
