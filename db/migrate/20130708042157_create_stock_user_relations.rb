class CreateStockUserRelations < ActiveRecord::Migration
  def change
    create_table :stock_user_relations do |t|
      t.integer :stock_id
      t.integer :user_id

      t.timestamps
    end
  end
end
