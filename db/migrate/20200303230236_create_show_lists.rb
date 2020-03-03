class CreateShowLists < ActiveRecord::Migration[6.0]
  def change
    create_table :show_lists do |t|
      t.integer :list_id
      t.integer :show_id

      t.timestamps
    end
  end
end
