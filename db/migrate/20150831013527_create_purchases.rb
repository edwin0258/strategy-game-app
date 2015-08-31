class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
    	t.integer :resource_id, :user_id
    	t.timestamps null: false
    end
  end
end
