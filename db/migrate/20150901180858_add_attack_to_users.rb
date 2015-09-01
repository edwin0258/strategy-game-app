class AddAttackToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :attack, :integer
  end
end
