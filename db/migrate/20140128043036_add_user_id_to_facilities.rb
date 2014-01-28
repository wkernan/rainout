class AddUserIdToFacilities < ActiveRecord::Migration
  def change
    add_column :facilities, :user_id, :integer
  end
end
