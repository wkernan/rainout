class AddHotlineToFacilities < ActiveRecord::Migration
  def change
    add_column :facilities, :hotline, :string
  end
end
