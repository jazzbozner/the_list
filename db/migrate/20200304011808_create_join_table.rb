class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :shows, :lists
  end
end
