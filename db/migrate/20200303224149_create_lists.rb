class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
