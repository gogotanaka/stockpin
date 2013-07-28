class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :contents
      t.integer :user_id
      t.integer :stock_id
      t.integer :board_id

      t.timestamps
    end
  end
end
