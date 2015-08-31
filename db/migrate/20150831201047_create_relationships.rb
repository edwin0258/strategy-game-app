class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
    	t.integer :clan_id
    	t.integer :member_id
    	t.timestamps null: false
    end
    add_index :relationships, :clan_id
    add_index :relationships, :member_id
    add_index :relationships, [:clan_id, :member_id], unique: true
  end
end
