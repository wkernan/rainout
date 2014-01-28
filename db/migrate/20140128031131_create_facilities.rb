class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :abbr
      t.string :status
      t.text :message

      t.timestamps
    end
  end
end
