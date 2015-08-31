class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
    	t.string :name
    	t.integer :price, :user_id
    	t.string :description
    	t.timestamps null: false
    end
  end
end
